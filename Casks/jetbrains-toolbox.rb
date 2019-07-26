cask 'jetbrains-toolbox' do
  version '1.15.5666'
  sha256 '77cf6efbe44d940389877fdfcef117f193c73018962a308d172493f712dc0290'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
