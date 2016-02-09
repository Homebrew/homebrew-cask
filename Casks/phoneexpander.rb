cask 'phoneexpander' do
  version '1.1_325'
  sha256 '94119bf1182c0f3c48c943a4b58a5372cc526ccb054b13288f0dfc6aedb72324'

  url "https://phoneexpander.com/downloads/PhoneExpander_#{version}.zip"
  appcast 'http://phoneexpander.com/appcast',
          checkpoint: 'ae814368a3441edd8ccf3022fd413318edd7205e07f6478251deb1e7cab7afeb'
  name 'PhoneExpander'
  homepage 'https://phoneexpander.com/'
  license :commercial

  auto_updates true

  app 'PhoneExpander.app'

  postflight do
    suppress_move_to_applications
  end
end
