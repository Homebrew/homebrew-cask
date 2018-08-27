cask 'phoneexpander' do
  version '1.1_325'
  sha256 '94119bf1182c0f3c48c943a4b58a5372cc526ccb054b13288f0dfc6aedb72324'

  url "https://phoneexpander.com/downloads/PhoneExpander_#{version}.zip"
  appcast 'https://phoneexpander.com/appcast'
  name 'PhoneExpander'
  homepage 'https://phoneexpander.com/'

  auto_updates true

  app 'PhoneExpander.app'
end
