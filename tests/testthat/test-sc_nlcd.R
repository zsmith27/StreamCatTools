context("Test that sc_nlcd is pulling in StreamCat API data")


test_that("st_get_data for a sample COMID returns a data frame", {
            df <- sc_nlcd(year='2001', aoi='catchment',
                              comid='179,1337,1337420')
            expect_true(exists("df"))
            expect_equal(nrow(df), 3)
            expect_equal(ncol(df), 19)
})

test_that("st_get_data for a county and ws metrics returns a data frame", {
  df <- sc_nlcd(year='2006, 2019', aoi='watershed',
                county='41003')
            expect_true(exists("df"))
            expect_equal(nrow(df), 632)
            expect_equal(ncol(df), 35)
          })