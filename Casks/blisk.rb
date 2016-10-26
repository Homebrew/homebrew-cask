cask 'blisk' do
  version '0.62.4925.237'
  sha256 '0210522a727984d8b9274c4608fddd2d22c3c4c840e9942b6d61d827b64a9ffb'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io'

  app 'Blisk.app'
end
