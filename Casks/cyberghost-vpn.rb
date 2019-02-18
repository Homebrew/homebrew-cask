cask 'cyberghost-vpn' do
  version '7.0.1.74'
  sha256 'a30ad341b29dde169e15f1af00cc68df1b8393fdd7d6cfc70b11c145e3241324'

  url "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cg#{version.major}mac_#{version}.dmg"
  appcast "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cyberghost_mac_update.inf"
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/'

  app 'CyberGhost VPN.app'
end
