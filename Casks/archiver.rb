cask 'archiver' do
  version '3.0.4'
  sha256 'f1e9ab990b8efe070cda5a823fe82f1f4e62f404d78c3265f80b851bd33008e0'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/archiver-#{version.major}.xml"
  name 'Archiver'
  homepage 'https://archiverapp.com/'

  depends_on macos: '>= :sierra'

  app 'Archiver.app'
end
