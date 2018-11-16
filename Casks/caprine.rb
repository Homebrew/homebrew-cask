cask 'caprine' do
  version '2.21.1'
  sha256 '7c07426826611b024c93fbb7cbffd2e11841e457f8bd2034385f9c4bf09b1768'

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
