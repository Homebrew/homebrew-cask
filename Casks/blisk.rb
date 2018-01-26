cask 'blisk' do
  version '6.0.168.148'
  sha256 '7d5f2805715584a17b4fab6d63d2fb364bddb6c6699f5258feb6cee12661a6f4'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
