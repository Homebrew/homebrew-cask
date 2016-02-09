cask 'phoneexpander' do
  version '1.1_325'
  sha256 '94119bf1182c0f3c48c943a4b58a5372cc526ccb054b13288f0dfc6aedb72324'

  url "https://phoneexpander.com/downloads/PhoneExpander_#{version}.zip"
  name 'PhoneExpander'
  homepage 'http://phoneexpander.com'
  license :commercial

  app 'PhoneExpander.app'
end
