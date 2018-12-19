cask 'blisk' do
  version '10.1.262.114'
  sha256 'f91e998eb2a3a02dda896f6dbb3b9f01b594750976e0182e65bc1a414570bf9b'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
