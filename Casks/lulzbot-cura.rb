cask 'lulzbot-cura' do
  version '21.03-69de'
  sha256 'd250c7262d4a8c5c5d35895f5831066ec14f1883d906c77bf29c5cae86b3d9a7'

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
