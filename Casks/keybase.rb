cask 'keybase' do
  version '1.0.23-20170522181119,8a8aea0'
  sha256 '61d3eb58c637cc9b2dde8d9ba44456bd7fa592afc0b0fe1114610fdab70489fc'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '16388f8a9ca5077186277daae34e72d0572620263293744df77c274fa252b500'
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
