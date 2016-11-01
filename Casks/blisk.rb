cask 'blisk' do
  version '1.0.125.166'
  sha256 '76c9b1c6f71524bef2a35c5055eb36c1b96f42945e4fb324447525a7e7ee1c59'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io'

  app 'Blisk.app'
end
