cask 'keybase' do
  version '4.7.0-20191021032428,67d9526320'
  sha256 '9718e4da17ed7bd724c60a1434d133ab6c295c3bde3db04f8d837734919f46bd'

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
