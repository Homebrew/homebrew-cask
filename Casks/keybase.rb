cask 'keybase' do
  version '2.12.6-20190103193723,07470de987'
  sha256 '7e7b3e5f73bc6d02b0862ff90214352241aaaa69a2ae0a63f37f8b913ea6b498'

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

  uninstall delete:     '/Library/PrivilegedHelperTools/keybase.Helper',
            launchctl:  'keybase.Helper',
            login_item: 'Keybase',
            signal:     [
                          ['TERM', 'keybase.Electron'],
                          ['TERM', 'keybase.ElectronHelper'],
                          ['KILL', 'keybase.Electron'],
                          ['KILL', 'keybase.ElectronHelper'],
                        ],
            script:     {
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
