cask 'blisk' do
  version '0.60.2491.72'
  sha256 '7b8a74cd36aec00b87870914b20833ef0e58fff7bb81fd0e15369726d27abf78'

  # bliskcloudstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  name 'Blisk Browser'
  homepage 'https://blisk.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Blisk.app'
end
