cask 'chromedriver' do
  version '2.43'
  sha256 '84244e590d866294c1eaa5fa65ad51f1b0d2cc4fc1595aa3e414f5aac4da60ef'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
