cask 'softu2f' do
  version '0.0.16'
  sha256 '3a448829c95234475ff39464760dc5a192e3c076e8d1fc6e96ed52ecbf457937'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom'
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
