cask 'dripcap' do
  version '0.6.7'
  sha256 '71499b09d3f0292f921f90dff6b7d6cc1fbefef438a8e86fe33f948011b5e74d'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: '61aaf4db003cacb6de827e7d8002d4188a83f6e60a7967ba2d1e6f04817a2a6f'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall launchctl: 'org.dripcap.DripcapHelper',
            delete:    [
                         '/Library/LaunchDaemons/org.dripcap.DripcapHelper.plist',
                         '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
                       ]
end
