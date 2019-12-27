cask 'cura-lulzbot' do
  version '3.6.21,ce3e47a08065c6687f0a226a4f1b2dc3'
  sha256 '454dd66f219b7a85e4fb4802ba5e23584eb95518e016668837fd5f77e3a20651'

  # gitlab.com/lulzbot3d/cura-le/cura-lulzbot was verified as official when first introduced to the cask
  url "https://gitlab.com/lulzbot3d/cura-le/cura-lulzbot/uploads/#{version.after_comma}/cura-lulzbot_#{version.before_comma}.dmg"
  appcast 'https://gitlab.com/lulzbot3d/cura-le/cura-lulzbot/-/tags?format=atom'
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
