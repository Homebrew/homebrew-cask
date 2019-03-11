cask 'chromedriver' do
  version '72.0.3626.69'
  sha256 'eab0cc3deb77966ed1b1c6569a33f26ee316de7e2063d2200422f7be3667009b'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
