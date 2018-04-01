cask 'softu2f' do
  version '0.0.15'
  sha256 '94994b1fcd214cb046faecdd4d741b8f66bdc0a1f1cc91b60ff4705c451a5902'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: '65d225a0d705c9a8f8adfd0e059a0e0c5792ebbaeb4e2e6803342432168250cf'
  name 'Soft U2F'
  homepage 'https://github.com/github/SoftU2F'

  depends_on macos: '>= :sierra'

  pkg 'SoftU2F.pkg'

  postflight do
    launchd_plist = "#{ENV['HOME']}/Library/LaunchAgents/com.github.SoftU2F.plist"

    system_command '/bin/launchctl',
                   args: ['unload', launchd_plist],
                   sudo: true

    set_ownership launchd_plist

    system_command '/bin/launchctl',
                   args: ['load', launchd_plist]
  end

  uninstall launchctl: 'com.github.SoftU2F',
            kext:      'com.github.SoftU2FDriver',
            pkgutil:   'com.GitHub.SoftU2F'
end
