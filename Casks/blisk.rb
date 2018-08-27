cask 'blisk' do
  version '9.1.201.31'
  sha256 '6ba7c1277903197f7aa7b461a1ab48a2938afd2189ce5e4a6b0a5d69d62507de'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
