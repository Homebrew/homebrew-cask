cask 'keycue' do
  version '9.2'
  sha256 'edad99aa6fe946c67259b0f9facc6e5869d306cbb4d73450f3c399ed6841f269'

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name 'KeyCue'
  homepage 'https://www.ergonis.com/products/keycue/'

  app 'KeyCue.app'

  zap trash: [
               '~/Library/Application Support/KeyCue',
               '~/Library/Preferences/com.macility.keycue.plist',
             ]
end
