cask 'cura-lulzbot' do
  version '3.6.18'
  sha256 '5570ddc6383cef85b077893d314fb0d221efdf33b98d8ab5d96d0a0673f2b859'

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
