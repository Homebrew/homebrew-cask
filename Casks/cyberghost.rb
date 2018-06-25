cask 'cyberghost' do
  version '5.0.15.5'
  sha256 '197e9501953861f0265c415b58f6a8983d97530860885f3135f6f75aeb9f5985'

  url "https://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  appcast 'https://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf'
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/'

  app "CyberGhost #{version.major}.app"
end
