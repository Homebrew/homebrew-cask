cask 'archiver' do
  version '3.0.8'
  sha256 '3652f413c8ac70c0509a8318f3a65752f621dbb87e323df5ac87b999fde2c98b'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/archiver-#{version.major}.xml"
  name 'Archiver'
  homepage 'https://archiverapp.com/'

  depends_on macos: '>= :sierra'

  app 'Archiver.app'
end
