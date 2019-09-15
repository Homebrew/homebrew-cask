cask 'ferdi' do
  version '5.3.2'
  sha256 '38293a06e400b71b200c51afb17c6837838c0987d1d8f3e3dda116388a3c08f7'

  url "https://github.com/kytwb/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg"
  appcast 'https://github.com/kytwb/ferdi/releases.atom'
  name 'Ferdi'
  homepage 'https://github.com/kytwb/ferdi'

  auto_updates true

  app 'Ferdi.app'

  uninstall quit:   'com.kytwb.ferdi',
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
