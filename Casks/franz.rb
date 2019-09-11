cask 'franz' do
  version '5.3.1'
  sha256 'debd1ff3cdc41f9c826a140cbeaed66c7e71a67a24cf25b4804024f676202814'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  auto_updates true

  app 'Franz.app'

  uninstall signal: [
                      ['QUIT', 'com.meetfranz.franz'],
                    ],
            delete: '/Library/Logs/DiagnosticReports/Franz Helper_.*wakeups_resource.diag'

  zap trash: [
               '~/Library/Application Support/Caches/franz-updater',
               '~/Library/Application Support/Franz',
               '~/Library/Caches/com.meetfranz.franz',
               '~/Library/Caches/com.meetfranz.franz.ShipIt',
               '~/Library/Logs/Franz',
               '~/Library/Preferences/ByHost/com.meetfranz.franz.ShipIt.*.plist',
               '~/Library/Preferences/com.electron.franz.helper.plist',
               '~/Library/Preferences/com.electron.franz.plist',
               '~/Library/Preferences/com.meetfranz.franz.plist',
               '~/Library/Saved Application State/com.electron.franz.savedState',
             ]
end
