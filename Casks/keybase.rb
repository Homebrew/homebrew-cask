cask 'keybase' do
  version '1.0.24-20170619144856,91a6943'
  sha256 '7e05d634bba135ad4e1d0d2eabf73c39364e98c8d6fd946a3cc311626430c9b7'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: 'a83dbddd60ea8b26bfa3959ec6a855453ba8364b7662c36dd0f1028403144501'
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
