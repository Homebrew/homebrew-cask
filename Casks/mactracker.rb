cask 'mactracker' do
  version '7.6.2'
  sha256 '0a5f0d76cd53dfcaf7acbdce284cc950d82ee2f742b0e2e5729f6aa07b06dea7'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '58912226a5925934bc500cabb865b035b8ef6d62709f6440ddb3052c4f15641f'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
