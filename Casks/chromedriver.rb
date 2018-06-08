cask 'chromedriver' do
  version '2.40'
  sha256 '3a5e47d7530923268e6ade36eb4647b6a327fc48c7a54e72d7ea67791a0cae29'

  # chromedriver.storage.googleapis.com was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE',
          checkpoint: '41930f53547cdd32efeb8b74059e046f3db5e7127757120ff26e4d3bbfb3fad5'
  name 'ChromeDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/home'

  binary 'chromedriver'
end
