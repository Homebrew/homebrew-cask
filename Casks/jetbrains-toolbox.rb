cask 'jetbrains-toolbox' do
  version '1.8.3678'
  sha256 '739bade6ff02f2ed97295ebe61ea65dfc07a63ff23c317342fd98a28e967fc96'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: 'db94980024e2da02d22514929cc31d64ebee3298bf05ba9a0c61ec4bceb689c9'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
