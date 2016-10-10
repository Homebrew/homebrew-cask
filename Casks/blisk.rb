cask 'blisk' do
  version '0.61.2743.166'
  sha256 '023d977bb17f54057c4b32986c9541af787058b2be7b7c5d7d93d5441f2a2616'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io'

  app 'Blisk.app'
end
