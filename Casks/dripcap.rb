cask 'dripcap' do
  version '0.3.10'
  sha256 'da431b636ba7fa7d5d286ccfac2a940e4c7a426f436fe9f17e140531e70c5274'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: 'eaf3729dcdc2a4e441028b803b20829963ef63b4809d0c753b148dd4f5bcf833'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall launchctl: 'org.dripcap.DripcapHelper',
            delete:    [
                         '/Library/LaunchDaemons/org.dripcap.DripcapHelper.plist',
                         '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
                       ]
end
