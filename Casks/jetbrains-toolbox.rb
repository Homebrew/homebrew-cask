cask 'jetbrains-toolbox' do
  version '1.2.2259'
  sha256 'b4351bf3e74f96ae4e10f6277c28ad3e05c0691ea010aef7879c7c34ec0beb2f'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: 'c3d5265454a7968f7c4af14bc3be9022488baa60aecdc7713df8e7ad04de263b'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
