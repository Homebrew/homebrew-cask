cask 'jetbrains-toolbox' do
  version '1.9.3935'
  sha256 'b08034316a2bf98fccbb4f53206c66282567a670595116d3df05b1dd1e31ef61'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
