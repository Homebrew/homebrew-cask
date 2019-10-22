cask 'jetbrains-toolbox' do
  version '1.16.6016'
  sha256 '6f8a9b61e32600b94ee761622f72d5154a47352e275b1a327e2f14b738e1e25f'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
