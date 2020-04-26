cask 'ferdi' do
  version '5.5.0'
  sha256 'fa9bd9e2c97a20272a36ccecec9ac5311e7776bbdfbbbdcf06a0a6e95fadac94'

  # github.com/getferdi/ferdi/ was verified as official when first introduced to the cask
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
