cask 'chromedriver' do
  version '2.46'
  sha256 '2aa256d17e4b2cc21f888b0e1b9ed211b925bf40f371d369fa0b9fbecf4bc52d'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
