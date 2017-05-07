cask 'keybase' do
  version '1.0.22-20170502110012,a3c4856'
  sha256 '2d3d53783b7f9dba5d4b693ea02340cba66597c6ab36f989393cb638b1f1a40a'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: 'a731f512fd2514fc357eff686b1b0939150821668848842a81bc6bb6a2c81a15'
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
