cask 'keybase' do
  version '1.0.27-20170808162133,d8131fba4'
  sha256 'aba63a2ebec60b7096c4830e9cbb0b14f4c7075882e0e3d50ce2dc9c35c149ad'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: 'a3a4bcafd7c71c8967363efcbcf840ef67d0ba730e9f7459602584af01678a4b'
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
