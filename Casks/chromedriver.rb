cask 'chromedriver' do
  version '77.0.3865.40'
  sha256 '6fd7ad8944f762933e2a62aa1908de26c94a81f5cb6673446700794ae0574313'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  conflicts_with cask: 'chromedriver-beta'

  binary 'chromedriver'
end
