cask 'blisk' do
  version '0.60.2490.71'
  sha256 '3f8e4cad7265a1cc1c65dd9040be347f30d6fdf865ae59a8ca00274fe3036be2'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Blisk.app'
end
