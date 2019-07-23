cask 'cura-lulzbot' do
  version '3.6.15'
  sha256 'feec76ab640878814863f4d800bfa2db246776dab0b41ffaa0daed4f0a84634a'

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
