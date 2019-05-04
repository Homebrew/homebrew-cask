cask 'franz' do
  version '5.1.0'
  sha256 '36e0817b4e1f6a04aec735aff6b38e251fd16d10bf9aab66fd4cb2697fbda9e3'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  auto_updates true

  app 'Franz.app'

  uninstall signal:     [
                          ['QUIT', 'com.meetfranz.franz'],
                        ],
            login_item: 'Franz',
            delete:     '/Library/Logs/DiagnosticReports/Franz Helper_.*wakeups_resource.diag'

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
