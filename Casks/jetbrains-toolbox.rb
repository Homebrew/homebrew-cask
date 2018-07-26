cask 'jetbrains-toolbox' do
  version '1.10.4088'
  sha256 'd13cc845e165abfa6216426494fa45ae2484701942f0e713e5f33c800b080a8f'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
