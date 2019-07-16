cask 'cura-lulzbot' do
  version '3.6.13'
  sha256 'd01d6a4643eb55fea783133b3db6fd3c0368070c8124fc48ed42d304ed5cbbd7'

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
