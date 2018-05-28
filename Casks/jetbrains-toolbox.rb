cask 'jetbrains-toolbox' do
  version '1.8.3868'
  sha256 '9f4d958e6626b17f15db0b871be600e0faf3b251041a0386d8b3f290a400fef4'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '38d8c1807a35f07c472af0235578363e071da5b4e7fc51270f93abf7dff9f706'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
