cask 'chromedriver' do
  version '2.37'
  sha256 'a1c4699cf12d51a5284971ba5ca2d8e354e422acd5151c920c5105339f4a5d29'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE',
          checkpoint: '8d92c9c2d484524c60f4ad13fb9319a8045d45b960079907bce91b7b03cedae3'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
