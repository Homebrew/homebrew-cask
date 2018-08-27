cask 'keycue' do
  version '9.0'
  sha256 'ae6f2d7191377437cd5cee714c04909dae7fcd5dc9b7d4381212d332640013c8'

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
