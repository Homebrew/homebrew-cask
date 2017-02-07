cask 'dripcap' do
  version '0.6.6'
  sha256 '6ff6f9ceff1e7bf05861f6d2d5ffb54fa7d2f33785832d2f456eaf0c3907c1a9'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: '71938cdeb112ca4f5dc4cdff2a59c2b0d79263382b53e3259633a6e7ca7be441'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall launchctl: 'org.dripcap.DripcapHelper',
            delete:    [
                         '/Library/LaunchDaemons/org.dripcap.DripcapHelper.plist',
                         '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
                       ]
end
