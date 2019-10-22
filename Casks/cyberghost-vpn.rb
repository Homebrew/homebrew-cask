cask 'cyberghost-vpn' do
  version '7.0.3.83'
  sha256 '00d64ce5e4d05c96aa1faa686ce6f388aaf5db8ec46590eff6601755d580ff56'

  url "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cg#{version.major}mac_#{version}.dmg"
  appcast "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cyberghost_mac_update.inf"
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/'

  depends_on macos: '>= :sierra'

  app 'CyberGhost VPN.app'
end
