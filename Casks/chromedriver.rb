cask 'chromedriver' do
  version '2.29'
  sha256 '6c30bba7693ec2d9af7cd9a54729e10aeae85c0953c816d9c4a40a1a72fd8be0'

  url 'https://chromedriver.storage.googleapis.com/2.29/chromedriver_mac64.zip'
  appcast 'https://chromedriver.storage.googleapis.com/LATEST_RELEASE',
          checkpoint: 'ec82d4ced9fa1fb7a81d67e6559af505df8c885efe8ecac580602e41933ac835'
  name 'ChromeDriver'
  name 'Chrome WebDriver'
  homepage 'https://sites.google.com/a/chromium.org/chromedriver/'

  binary 'chromedriver'
end
