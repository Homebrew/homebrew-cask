cask 'chromedriver' do
  version '74.0.3729.6'
  sha256 'b4b73681404d231d81a9b7ab9d4f0cb090f3e69240296eca2eb46e2629519152'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
