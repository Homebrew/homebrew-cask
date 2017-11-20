cask 'keycue' do
  version '8.5'
  sha256 'f08c3cc847fbc08c3c31fcb5b77d773450c71b7f0a04f9d15584bf756feb4226'

  url "http://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name 'KeyCue'
  homepage 'http://www.ergonis.com/products/keycue/'

  app 'KeyCue.app'

  zap trash: [
               '~/Library/Application Support/KeyCue',
               '~/Library/Preferences/com.macility.keycue.plist',
             ]
end
