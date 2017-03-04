cask 'keybase' do
  version '1.0.18-20170223162556,af0e640'
  sha256 '17a821f14f9e08f09d2f1b11f453b801e62bc499d49642259180345f540a3fc5'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '4f9fe66044e2df91b7622351e6e198aab60df70d12664ee1349cc2711c082350'
  name 'Keybase'
  homepage 'https://keybase.io/'

  auto_updates true

  app 'Keybase.app'

  postflight do
    system_command "#{appdir}/Keybase.app/Contents/Resources/KeybaseInstaller.app/Contents/MacOS/Keybase",
                   args: ["--app-path=#{appdir}/Keybase.app", '--run-mode=prod', '--timeout=10']
  end

  uninstall_preflight do
    if system_command('launchctl', args: ['list']).stdout =~ %r{/^\d+.*keybase.Electron/}
      system_command 'killall', args: ['-kill', 'Keybase']
    end
    system_command "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
                   args: ['uninstall']
  end
end
