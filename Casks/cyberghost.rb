cask 'cyberghost' do
  version '5.0.15.3'
  sha256 '78bd6bf3a5e07bc6a2ec0106dd8d98e7f5e16914be5c98ae9bece80921290c69'

  url "https://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  appcast 'https://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf',
          checkpoint: '68b94750860c5b28bd90bf39553d87d219bd41adca3363e119b3c58d6614ade4'
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/en'

  app "CyberGhost #{version.major}.app"
end
