cask 'bitdock' do
  version '1.1'
  sha256 'df5ee64679b17759c63464524e49b8c9af6b099ce21cb86075a8f30172128eb0'

  url "https://github.com/chrisunderdown/bitdock/releases/download/v#{version}/Bitdock.dmg"
  appcast 'https://github.com/chrisunderdown/bitdock/releases.atom',
          checkpoint: 'e2270086c260206fe762048a56ecc03b28f869bdadca25883e7e2867d12422a8'
  name 'Bitdock'
  homepage 'https://github.com/chrisunderdown/bitdock'

  app 'Bitdock.app'

  uninstall login_item: 'Bitdock',
            signal:     [
                          ['TERM', 'com.electron.bitdock'],
                          ['TERM', 'com.electron.bitdock.helper'],
                        ]

  zap trash: [
               '~/Library/Application Support/Bitdock',
               '~/Library/Preferences/com.electron.bitdock.helper.plist',
               '~/Library/Preferences/com.electron.bitdock.plist',
             ]
end
