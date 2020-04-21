cask 'caprine' do
  version '2.45.0'
  sha256 '52b08f5e68dda496516c5ee98178958df45ad2048f3ac3daea177b6e9305624b'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'

  zap trash: [
               '~/Library/Application Support/Caprine',
               '~/Library/Logs/Caprine',
               '~/Library/Caches/com.sindresorhus.caprine',
               '~/Library/Caches/com.sindresorhus.caprine.ShipIt',
               '~/Library/Preferences/com.sindresorhus.caprine.helper.plist',
               '~/Library/Preferences/com.sindresorhus.caprine.plist',
               '~/Library/Saved Application State/com.sindresorhus.caprine.savedState',
             ]
end
