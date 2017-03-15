cask 'keybase' do
  version '1.0.20-20170309192151,e30557a'
  sha256 '2ec3c83b4767a48f588fb58da91d9d67f3b6bc858ac7b5417137b677fdc4252a'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: '389c6674b70d0630b19dfafbce103d082bbfc710943a5bac17fc77042fd6fea8'
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
