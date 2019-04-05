cask 'jetbrains-toolbox' do
  version '1.14.5037'
  sha256 '819b6e379c5660f8b6b326d4aadd191f9698b189ef7134acb7222cfb7ec10e38'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
