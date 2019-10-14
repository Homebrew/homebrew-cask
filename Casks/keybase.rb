cask 'keybase' do
  version '4.6.0-20191010081014,134c2d892b'
  sha256 '7eefca2d3cc65e30fbf7cacef13d1478030d362ccf5f2a0faf82cebefed994b0'

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

  uninstall delete:    '/Library/PrivilegedHelperTools/keybase.Helper',
            launchctl: 'keybase.Helper',
            signal:    [
                         ['TERM', 'keybase.Electron'],
                         ['TERM', 'keybase.ElectronHelper'],
                         ['KILL', 'keybase.Electron'],
                         ['KILL', 'keybase.ElectronHelper'],
                       ],
            script:    {
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
