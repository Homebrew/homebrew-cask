cask 'blisk' do
  version '2.0.136.192'
  sha256 '4760ef49a4fee184db5c6a9b28f17d282dead1ba936cd42cc32603f8a6bac10b'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
