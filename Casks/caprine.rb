cask 'caprine' do
  version '2.14.2'
  sha256 '7a682142d19b160db6091f0c0fec913d6fd74f0b53efb5bbe284a58b47a2b930'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '4f61889f5ebf635954c39ffe02a120abab5202a74794ad30ecc8163e9741f9f6'
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
