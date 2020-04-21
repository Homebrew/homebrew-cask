cask 'chromedriver' do
  version '81.0.4044.69'
  sha256 '2172bb9be60f2dbe69ad00f707a72de6b75882403f2de7fcb031aa329770cda3'

  # chromedriver.storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver-beta'

  binary 'chromedriver'
end
