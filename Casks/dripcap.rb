cask 'dripcap' do
  version '0.6.1'
  sha256 '8aeef72c32a76906feb5dc5d95e2195f06404225305d6bdbaff9477ca49b367e'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: '25aa7d8fbacf558990e74d9d6caae648365facd3851e133fede5c1ade363adbc'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall launchctl: 'org.dripcap.DripcapHelper',
            delete:    [
                         '/Library/LaunchDaemons/org.dripcap.DripcapHelper.plist',
                         '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
                       ]
end
