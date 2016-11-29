cask 'lulzbot-cura' do
  version '21.02-1da4'
  sha256 '104fd12da8e24cf8b23c084ba7f420def952a7ecc660e798e1de3c5193f95bcd'

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
