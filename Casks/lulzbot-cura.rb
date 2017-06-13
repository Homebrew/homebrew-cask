cask 'lulzbot-cura' do
  version '21.04-d244'
  sha256 '46c8e74c57edf36680fe41c8ab9cd1d863f0f32800289e5cddab652f13d4a0f7'

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
