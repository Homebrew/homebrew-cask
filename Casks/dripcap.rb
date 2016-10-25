cask 'dripcap' do
  version '0.4.0'
  sha256 '9fc18f5f0ed54236eb407c0bd9eac1d2674d8d6893bdc329f33ed02ad2d463e6'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: '0364bf3db4d8fd226f7db588a4706f3469de230f49babee50e3092310c6ff58e'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall launchctl: 'org.dripcap.DripcapHelper',
            delete:    [
                         '/Library/LaunchDaemons/org.dripcap.DripcapHelper.plist',
                         '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
                       ]
end
