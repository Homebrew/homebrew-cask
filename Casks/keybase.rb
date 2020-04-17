cask 'keybase' do
  version '5.4.0-20200416160205,e81aee5eaf'
  sha256 '69ab37898448e073336151f582b9110849eaa6e82f102a9c4c43228a59a3bcb4'

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
