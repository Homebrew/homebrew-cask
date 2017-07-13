cask 'jetbrains-toolbox' do
  version '1.4.2492'
  sha256 'd8426a5dc0c9c46773a8a41b72e71b8f80cdac0545e942d4fff3f2dabcbf3a68'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '1284ec7ed798f102479a563ef7789d963c961fd9ccf2fc68fe35ea5fc14dd1ef'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
