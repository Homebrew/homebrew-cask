cask 'caprine' do
  version '2.26.0'
  sha256 '144b0efe1d368efe95059ceb39500f897e56458b2f75bbda7c8e905bc11ed531'

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
