cask 'jetbrains-toolbox' do
  version '1.15.5387'
  sha256 '462b4be610330b5eda310e03ee6015317991cfb43a8fc4a4530d0f402c7d7abe'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
