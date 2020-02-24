cask 'keybase' do
  version '5.2.0-20200130011203,cf82db8320'
  sha256 'b2ec06d6b733e83ab385abcfb32fe35039d4a07017a86fa9ec041e771f07fb89'

  url "https://prerelease.keybase.io/darwin-updates/Keybase-#{version.before_comma}%2B#{version.after_comma}.zip"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'

  postflight do
    system_command "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
                   args: ['install-auto']
  end

  uninstall delete:    '/Library/PrivilegedHelperTools/keybase.Helper',
            launchctl: 'keybase.Helper',
            signal:    [
                         ['TERM', 'keybase.Electron'],
                         ['TERM', 'keybase.ElectronHelper'],
                         ['KILL', 'keybase.Electron'],
                         ['KILL', 'keybase.ElectronHelper'],
                       ],
            script:    {
                         executable: "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
                         args:       ['uninstall'],
                       }

  zap trash: [
               '~/Library/Application Support/Keybase',
               '~/Library/Caches/Keybase',
               '~/Library/Group Containers/keybase',
               '~/Library/Logs/Keybase*',
               '~/Library/Logs/keybase*',
               '~/Library/Preferences/keybase*',
               '/Library/Logs/keybase*',
             ],
      rmdir: '/keybase'
end
