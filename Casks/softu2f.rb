cask 'softu2f' do
  version '0.0.15-beta3'
  sha256 '9e642cbc87b411a0b2e114707924b80732338545a3fc00b9516b3b3b5b4d8806'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
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
