cask 'phoneexpander' do
  version '1.1_325'
  sha256 '94119bf1182c0f3c48c943a4b58a5372cc526ccb054b13288f0dfc6aedb72324'

  url "https://phoneexpander.com/downloads/PhoneExpander_#{version}.zip"
  appcast 'https://phoneexpander.com/appcast',
          checkpoint: '69e4a33ba8d1f2abd7ba5a5794a533506ccbecebfead08f94c35c3ce84bf3b38'
  name 'PhoneExpander'
  homepage 'https://phoneexpander.com/'

  auto_updates true

  app 'PhoneExpander.app'

  postflight do
    suppress_move_to_applications
  end
end
