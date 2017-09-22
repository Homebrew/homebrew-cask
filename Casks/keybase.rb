cask 'keybase' do
  version '1.0.30-20170915193210,8c3c799f2'
  sha256 'd462c1d88733a0714b6abcad43881bbcfd8ad15350e1561d6971815396bee29c'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '0f3cd31ed6ce46d9ee85d5ed5d432bcf361b86c4102e7c2bd4d1979839fa19fa'
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
