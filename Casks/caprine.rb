cask 'caprine' do
  version '2.12.1'
  sha256 'dbe40db6855d7e658d7b20a9b41d7c299d5a8f6e53cb76899825f3c43ec59390'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'adbab2c6371a253e9873733cb7829244ec026ad0fb9fdbf674f085a843ab6c99'
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
