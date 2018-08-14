cask 'chromedriver' do
  version '2.41'
  sha256 'fd32a27148f44796a55f5ce3397015c89ebd9f600d9dda2bcaca54575e2497ae'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
