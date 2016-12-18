cask 'dripcap' do
  version '0.5.1'
  sha256 '067567e6ab0be23e4899572e45b2549f6b4ef7ee230fb928d21278aa1b9642c5'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: 'b70c95f5998afe00e0ed1874dfa4e493720caec7ae0d4b5b0647ff0ac0684613'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall launchctl: 'org.dripcap.DripcapHelper',
            delete:    [
                         '/Library/LaunchDaemons/org.dripcap.DripcapHelper.plist',
                         '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
                       ]
end
