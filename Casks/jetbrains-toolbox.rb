cask 'jetbrains-toolbox' do
  version '1.17.6802'
  sha256 '19300e6b4b62a70e05f49581c9933aed7e071a6153e69f832e9924c61ef26ddb'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
