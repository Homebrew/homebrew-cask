cask 'blisk' do
  version '11.0.157.186'
  sha256 '1dbf8c77a55089fa023bc26be4fa33a3926bbb405b0164f91168afb317ac2e48'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
