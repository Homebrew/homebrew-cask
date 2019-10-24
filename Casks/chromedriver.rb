cask 'chromedriver' do
  version '78.0.3904.70'
  sha256 'f04501f36af92ab869111137a66c84612e69ec729caa29b25fa4c305614cfe37'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver-beta'

  binary 'chromedriver'
end
