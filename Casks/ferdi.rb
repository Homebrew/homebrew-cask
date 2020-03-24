cask 'ferdi' do
  version '5.4.3'
  sha256 'b0cae5b4be16b0e754688ed7b5beb19b8d8352473d412785149cebfd2a44a741'

  # github.com/getferdi/ferdi was verified as official when first introduced to the cask
  url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg"
  appcast 'https://github.com/getferdi/ferdi/releases.atom'
  name 'Ferdi'
  homepage 'https://getferdi.com/'

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
               '~/Library/Saved Application State/com.kytwb.ferdi.savedState',
             ]
end
