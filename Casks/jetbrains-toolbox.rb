cask 'jetbrains-toolbox' do
  version '1.12.4481'
  sha256 '8e85762a20c67f3d98f2a4e66074820be1c6b71b24c85919cc2187fec9339b01'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
