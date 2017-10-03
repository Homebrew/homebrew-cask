cask 'keybase' do
  version '1.0.32-20171002191217,341a3c38c'
  sha256 '996612b1afc2c8904a0afa1bff6f92672929e404464575a622cf168d3859880b'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: 'b7561674568f0b74bdae73dc7d866ebca6a81d4bbf704fca48e83ba9ae9eb653'
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
