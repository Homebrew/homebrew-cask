cask 'chromedriver' do
  version '2.38'
  sha256 '6da3e8e3604d332b73f961495cb6d01d79d995b456778a3bda87df236c138462'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE',
          checkpoint: '56cbe3c372f86dc281ca8b3107962d7c546a861bdf975a75c245fb46526c50ed'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
