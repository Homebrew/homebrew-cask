cask 'chromedriver' do
  version '2.38'
  sha256 'e87fa43af3fbcfd5b9e49e627f09ff780ce5adc5def6b13aa6380f32174ed898'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE',
          checkpoint: '56cbe3c372f86dc281ca8b3107962d7c546a861bdf975a75c245fb46526c50ed'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
