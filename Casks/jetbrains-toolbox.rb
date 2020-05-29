cask 'jetbrains-toolbox' do
  version '1.17.7005'
  sha256 '8347e8d3b6928a4934c29cf1a25dfbbb86bc477da66de1159677ad7ed878b590'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
