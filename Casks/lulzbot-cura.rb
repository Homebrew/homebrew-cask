cask 'lulzbot-cura' do
  version '21.00-b796'
  sha256 '91747d45a9419542ee12ce962e9237b26fe138f9115bff781538ba8d62bbb8ac'

  # download.alephobjects.com/lulzbot was verified as official when first introduced to the cask
  url "http://download.alephobjects.com/lulzbot/Software/Cura/Packages/Cura_#{version.major_minor}/cura_#{version}.dmg"
  name 'Cura LulzBot Edition'
  homepage 'https://www.lulzbot.com/learn/tutorials/cura-lulzbot-edition-installation-osx'

  conflicts_with cask: 'cura'

  app 'Cura/Cura.app'

  uninstall quit: "com.ultimaker.Cura-#{version.major_minor}"

  zap delete: [
                '~/.cura',
                '~/Library/Application Support/Cura',
                "~/Library/Preferences/com.ultimaker.Cura-#{version.major_minor}.plist",
                "~/Library/Saved Application State/com.ultimaker.Cura-#{version.major_minor}.savedState",
              ]
end
