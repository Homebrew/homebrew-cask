cask 'blisk' do
  version '2.0.136.192'
  sha256 'e4cf4958b6b6d7ae5b51375d0c3fc2e0b2adaafdffc93b0405ad4cd15d3f9d30'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
