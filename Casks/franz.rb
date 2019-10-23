cask 'franz' do
  version '5.4.0'
  sha256 'b22bad16009bfa8696a1cbae2f2b790e963231d14d2a43f3c815a373bcc9a54f'

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
