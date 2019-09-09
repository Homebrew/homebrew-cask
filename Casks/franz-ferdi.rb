cask 'franz-ferdi' do
  version '5.3.0'
  sha256 '2300da1d7835932ab831c900bb1f80af8ad014b6e14ae73eef5c7febcd18c10d'

  url "https://github.com/kytwb/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg"
  appcast 'https://github.com/kytwb/ferdi/releases.atom'
  name 'Ferdi'
  homepage 'https://github.com/kytwb/ferdi'

  auto_updates true

  app 'Ferdi.app'

  uninstall signal: [
                      ['QUIT', 'com.kytwb.ferdi'],
                    ],
            delete: '/Library/Logs/DiagnosticReports/Ferdi Helper_.*wakeups_resource.diag'

  zap trash: [
               '~/Library/Application Support/Caches/ferdi-updater',
               '~/Library/Application Support/Ferdi',
               '~/Library/Caches/com.kytwb.ferdi',
               '~/Library/Caches/com.kytwb.ferdi.ShipIt',
               '~/Library/Logs/Ferdi',
               '~/Library/Preferences/ByHost/com.kytwb.ferdi.ShipIt.*.plist',
               '~/Library/Preferences/com.electron.ferdi.helper.plist',
               '~/Library/Preferences/com.electron.ferdi.plist',
               '~/Library/Preferences/com.kytwb.ferdi.plist',
               '~/Library/Saved Application State/com.electron.ferdi.savedState',
             ]
end
