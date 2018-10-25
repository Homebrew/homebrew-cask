cask 'blisk' do
  version '10.0.261.275'
  sha256 'c12757f66a5fccf29b01b3fcb01a39302118ce88e7992426ade47b8dacfa5a28'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
