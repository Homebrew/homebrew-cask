cask 'dripcap' do
  version '0.5.2'
  sha256 'f2edaff7e8074114f8755ec3c4b57c1942cfdf4933165791c996ff5f86af3fe9'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: '7fb346513e6be63a962b40e97ed5f8d064ae27da7904b3ae047779f2ed8ce43a'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall launchctl: 'org.dripcap.DripcapHelper',
            delete:    [
                         '/Library/LaunchDaemons/org.dripcap.DripcapHelper.plist',
                         '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
                       ]
end
