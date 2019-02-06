cask 'jetbrains-toolbox' do
  version '1.13.4801'
  sha256 'f04f3db2eec84e6fba7be26a513f0b4e264919cc893762725d3a51d68440de6a'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
