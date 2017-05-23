cask 'jetbrains-toolbox' do
  version '1.3.2421'
  sha256 '7aa1bb6c5a7c3f3cb2e38d9229c6720d68af02a5a10505d64ec7ca04c4984044'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '52ba55ed1ef342693e841500c15693324b0bc40363455bbc4e4e9c916b2aaee2'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
