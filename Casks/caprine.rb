cask 'caprine' do
  version '2.12.0'
  sha256 '687265a0a86d7b04de0365d1f296aebc733d5ffd96ca0f4fed3e5956211f97b7'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'e68d0e3cdcdde7ac1285b326f20d4d720b923ff9c6ceb9460f659e86bd6991b3'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'

  zap trash: [
               '~/Library/Application Support/Caprine',
               '~/Library/Logs/Caprine',
               '~/Library/Preferences/com.sindresorhus.caprine.helper.plist',
               '~/Library/Preferences/com.sindresorhus.caprine.plist',
               '~/Library/Saved Application State/com.sindresorhus.caprine.savedState',
             ]
end
