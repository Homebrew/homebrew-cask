cask 'chromedriver' do
  version '73.0.3683.20'
  sha256 'ef6eaa713b6f550edc9d7c5b0a0e234bc07d0976774ef2055f470abaa322c6dd'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
