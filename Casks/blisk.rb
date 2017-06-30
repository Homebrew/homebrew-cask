cask 'blisk' do
  version '5.0.32.150'
  sha256 'e18036b514f41d1c7e0fbf9f9725989c29eb86ca06239e1442a51379be237feb'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
