cask 'blisk' do
  version '8.0.201.218'
  sha256 'f7c6c99f1ac96ff43d41eb00528552c01c89364cfeb7279fe94a3b08a99c3069'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
