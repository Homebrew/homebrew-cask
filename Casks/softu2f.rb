cask 'softu2f' do
  version '0.0.13'
  sha256 '94b226aa26439e2fc418d51529cffd510e7a3ee768b50948bdbfc9b70e7bda48'

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: '2b02c008438e95878370d136846a4c1642b5a33a3e40bf843c18c986d846add9'
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
