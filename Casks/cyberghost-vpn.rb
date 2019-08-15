cask 'cyberghost-vpn' do
  version '7.0.2.82'
  sha256 '310d18486eeeced68c93a23d4e9b054cfb6bd8338318ea73ce39e8ffc8f38605'

  url "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cg#{version.major}mac_#{version}.dmg"
  appcast "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cyberghost_mac_update.inf"
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/'

  depends_on macos: '>= :sierra'

  app 'CyberGhost VPN.app'
end
