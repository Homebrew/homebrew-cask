cask 'chromedriver' do
  version '2.39'
  sha256 '8a98819f27b12db041268fa12201dcd3d4683c8cf0f5e91dc69e7c8001b0100c'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE',
          checkpoint: 'cc2504c261f94795ae0fcb9c4eced78afe10a96f12f5dfe8c4cb21b7a9115d82'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
