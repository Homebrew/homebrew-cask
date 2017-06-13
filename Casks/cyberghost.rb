cask 'cyberghost' do
  version '5.0.14.12'
  sha256 'c1ed2c4837be99e0c2fef9c957d9e798a359f1b1bacb03dd5850cc9f779855be'

  url "https://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  appcast 'https://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf',
          checkpoint: '3e9d014a611e4fea1cfcd85850394ac0a4fdd6d491c3a8c7a60708d7ad3937c8'
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/en'

  app "CyberGhost #{version.major}.app"
end
