cask 'keybase' do
  version '1.0.29-20170905231311,b2e9d4022'
  sha256 '8866443718ced6136507083608f36eada67fe8889af516188842bea1b57c4f54'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '03372c33a1353f66f0a2d69c812c87c3b6db3eeb77cfbea3a91f26e84c8d5982'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'

  postflight do
    system_command "#{appdir}/Keybase.app/Contents/Resources/KeybaseInstaller.app/Contents/MacOS/Keybase",
                   args: ["--app-path=#{appdir}/Keybase.app", '--run-mode=prod', '--timeout=10']
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

  zap delete: [
                '~/Library/Caches/Keybase',
                '~/Library/Group Containers/keybase',
                '~/Library/Logs/Keybase*',
                '~/Library/Logs/keybase*',
                '/Library/Logs/keybase*',
              ],
      trash:  [
                '~/Library/Application Support/Keybase',
                '~/Library/Preferences/keybase*',
              ],
      rmdir:  '/keybase'
end
