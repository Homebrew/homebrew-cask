cask 'keybase' do
  version '1.0.22-20170515141716,b608f0e'
  sha256 '0d6d03b6d5b13e0916f18d156dd83a5b46d9f6b25625af8723f211ad39d261cb'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '862c9f6e526b007329ec3166f8e6fa841ff9b7c068ebd46600144e8944333dea'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'

  postflight do
    system_command "#{appdir}/Keybase.app/Contents/Resources/KeybaseInstaller.app/Contents/MacOS/Keybase",
                   args: ["--app-path=#{appdir}/Keybase.app", '--run-mode=prod', '--timeout=10']
  end

  uninstall launchctl:  'keybase.Helper',
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

  zap delete: [
                '~/Library/Application Support/Keybase',
                '~/Library/Caches/Keybase',
                '~/Library/Group Containers/keybase',
                '~/Library/Logs/Keybase.app.log',
                '~/Library/Logs/keybase.kbfs.log',
                '~/Library/Logs/keybase.service.log',
                '~/Library/Logs/keybase.start.log',
                '~/Library/Logs/keybase.updater.log',
                '~/Library/Preferences/keybase.Electron.plist',
                '~/Library/Preferences/keybase.ElectronHelper.plist',
                '/Library/Logs/keybase.system.log',
                '/Library/PrivilegedHelperTools/keybase.Helper',
              ],
      rmdir:  '/keybase'
end
