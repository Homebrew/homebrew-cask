cask 'cura-lulzbot' do
  version '3.6.8'
  sha256 'a2c821be2544eda26ee85bf601f28d8774ccce739a1a101c65868fa231d290f9'

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
