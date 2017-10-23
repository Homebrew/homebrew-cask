cask 'lulzbot-cura' do
  version '21.08-f2748'
  sha256 'c03ee9aec222641408c0a98d957aead05a2f4fa037e7380f6226a74b37952d0f'

  # download.alephobjects.com/lulzbot was verified as official when first introduced to the cask
  url "https://download.alephobjects.com/lulzbot/Software/Cura/Packages/Cura_#{version.major_minor}/cura_#{version}.dmg"
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
