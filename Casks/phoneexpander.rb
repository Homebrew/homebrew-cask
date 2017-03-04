cask 'phoneexpander' do
  version '1.1_325'
  sha256 '94119bf1182c0f3c48c943a4b58a5372cc526ccb054b13288f0dfc6aedb72324'

  url "https://phoneexpander.com/downloads/PhoneExpander_#{version}.zip"
  appcast 'https://phoneexpander.com/appcast',
          checkpoint: 'ebcdbc310920a916c79d4bc6041690a1dfc6799468ddc9c1e60173a4fa09dfd2'
  name 'PhoneExpander'
  homepage 'https://phoneexpander.com/'

  auto_updates true

  app 'PhoneExpander.app'

  postflight do
    suppress_move_to_applications
  end
end
