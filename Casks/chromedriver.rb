cask 'chromedriver' do
  version '81.0.4044.138'
  sha256 '15e53d13dfeb7305a89aaa3701fd03d6aa14d60b98458f48333d1d5ec54c14d1'

  # chromedriver.storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver-beta'

  binary 'chromedriver'
end
