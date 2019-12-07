cask 'jetbrains-toolbox' do
  version '1.16.6067'
  sha256 '756e77e7186e7741f6bee524d1422ed75a0e1f3d07f7be2f6638f3cdcf6f75a3'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
