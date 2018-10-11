cask 'jetbrains-toolbox' do
  version '1.11.4269'
  sha256 '7681d2729e924d7f1f15b6a9472a0637ee6e4a09855e76caec883a945a2bf28c'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
