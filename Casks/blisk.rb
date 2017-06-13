cask 'blisk' do
  version '4.0.21.147'
  sha256 '1c286f4ef04bd53b26e0c0e699cbec1de4454afc37a6864da247547898fa6892'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
