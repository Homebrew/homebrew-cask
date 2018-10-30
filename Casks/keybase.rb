cask 'keybase' do
  version '2.9.0-20181029210507,02197a56e8'
  sha256 '4c334aa0e777113ee0f989f15916df61e0fb6a8b85ca31e54db4f10ad2f6c50f'

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
