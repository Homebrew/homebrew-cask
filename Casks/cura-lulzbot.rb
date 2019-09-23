cask 'cura-lulzbot' do
  version '3.6.20'
  sha256 '454dd66f219b7a85e4fb4802ba5e23584eb95518e016668837fd5f77e3a20651'

  url "https://download.lulzbot.com/Software/cura-lulzbot/mac/cura-lulzbot_#{version}.dmg"
  appcast 'https://download.lulzbot.com/Software/cura-lulzbot/mac/'
  name 'Cura LulzBot Edition'
  homepage 'https://www.lulzbot.com/learn/tutorials/cura-lulzbot-edition-installation-osx'

  app 'cura-lulzbot.app'

  zap trash: [
               '~/.cura',
               '~/Library/Application Support/cura-lulzbot',
               '~/Library/Preferences/org.pythonmac.unspecified.cura-lulzbot.cura-lulzbot',
               '~/Library/Saved Application State/org.pythonmac.unspecified.cura-lulzbot.savedState',
             ]
end
