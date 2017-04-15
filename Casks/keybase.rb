cask 'keybase' do
  version '1.0.21-20170413194119,9dea6e1'
  sha256 'c95ae144b67135f5ad1cbfcd12fed650c34c4d6635dd9568f5043dd69f4ac857'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: 'b4a97631cbfdbaed480c2998fa896e3dba6f7b2f2c8ee490992fddbdf4dc876c'
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
