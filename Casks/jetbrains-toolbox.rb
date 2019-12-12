cask 'jetbrains-toolbox' do
  version '1.16.6207'
  sha256 '2f3ebc1be2ce6a7108bb1f3e6f85179d0a851286f32a0a305897b8f435575cdb'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
