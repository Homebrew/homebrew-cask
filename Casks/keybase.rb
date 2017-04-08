cask 'keybase' do
  version '1.0.20-20170317000044,73c5db6'
  sha256 '2f31db3668db8d613ce85fc3ef4bf6f933c64eb2f46e8c664a777166b1f8e3e0'

  url "https://prerelease.keybase.io/darwin/Keybase-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast 'https://prerelease.keybase.io/update-darwin-prod-v2.json',
          checkpoint: 'b37694bcb085744fdd02746801d646f7f5745ed861aa2866848cc4442a1a3f74'
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
