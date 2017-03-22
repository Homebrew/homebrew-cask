cask 'blisk' do
  version '3.1.62.192'
  sha256 'e5a3fc8524998d8bd85a6f25ea8e87bed74c5c1e8defa627ab4102959a79d7e8'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io/'

  app 'Blisk.app'
end
