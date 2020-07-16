cask 'chromedriver' do
  version '84.0.4147.30'
  sha256 '1bed996247f5f93eed28110927a10b45f01a7deeda4ab1b1acfd6bb66784acc5'

  # chromedriver.storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver-beta'

  binary 'chromedriver'
end
