cask 'jetbrains-toolbox' do
  version '1.15.5605'
  sha256 '8165debd27bd18c5a3ecdd22fce11766bd8148a9b477ffbf3b879cd93462842f'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
