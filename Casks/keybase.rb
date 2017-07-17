cask 'keybase' do
  version '1.0.25-20170715002410,acae5b06f'
  sha256 'fee7fe9c3ce1856e35d531ce7302c28eea20080e0205dcf6abe446c51a6a4075'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '6a9502a3cb84552d8797e1e4f42d1f1f5d06764ef159a7a311e6315f835959f4'
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
