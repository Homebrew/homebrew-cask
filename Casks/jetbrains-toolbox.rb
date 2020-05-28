cask 'jetbrains-toolbox' do
  version '1.17.6999'
  sha256 'c9e47908841918005547f5a7f3a6976c34e5aa36fcedd14d26269e13347f5420'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
