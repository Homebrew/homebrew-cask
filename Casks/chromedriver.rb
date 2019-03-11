cask 'chromedriver' do
  version '73.0.3683.68'
  sha256 'eaaa1b0b7d47b113d228ca99a5d68de52f660ccd9dd78a069df8cd97ff83308a'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
