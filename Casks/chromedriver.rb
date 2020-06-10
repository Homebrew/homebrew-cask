cask 'chromedriver' do
  version '83.0.4103.39'
  sha256 'd902d4b3e77e466102ebfe25e13a25798b473655461fa3e928268faf6fc7fef6'

  # chromedriver.storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver-beta'

  binary 'chromedriver'
end
