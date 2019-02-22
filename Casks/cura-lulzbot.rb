cask 'cura-lulzbot' do
  version '3.6.3'
  sha256 'a9cb397b738fac372ac709e85e1b07db91e8c7242b6b8b4209bc495b7a1a5e97'

  url "https://download.lulzbot.com/Software/cura-lulzbot/mac/cura-lulzbot_#{version}.dmg"
  name 'Cura LulzBot Edition'
  homepage 'https://www.lulzbot.com/learn/tutorials/cura-lulzbot-edition-installation-osx'

  app 'cura-lulzbot.app'

  zap trash: [
               '~/.cura',
               '~/Library/Application Support/cura-lulzbot',
               '~/Library/Preferences/org.pythonmac.unspecified.cura-lulzbot.cura-lulzbot',
               '~/Library/Saved Application State/org.pythonmac.unspecified.cura-lulzbot.savedState',
             ]

  # Caveat is included per the "Upgrading? Clean your Cache!" section, here:
  # https://www.lulzbot.com/learn/tutorials/cura-lulzbot-edition-installation-macos
  caveats <<-CAVEAT
  If you are upgrading from a previous version of Cura Lulzbot Edition,
  Lulzbot reccommends that you clear your cache.

  The commands below will delete the older slicing profiles and 3D printer settings
  from previous versions of Cura LulzBot Edition. Back up the files and folders
  listed below first if any customizations have been made.

  Open Terminal, and run the following command:

     rm -rf ~/Library/Application\ Support/cura-lulzbot

  CAVEAT
end
