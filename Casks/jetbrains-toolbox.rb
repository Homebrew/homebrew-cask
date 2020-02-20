cask 'jetbrains-toolbox' do
  version '1.16.6319'
  sha256 'e4630d395e9ca6f8086e98011884923e8cfc702d3dc3cfb41048dbfc80daa0de'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
