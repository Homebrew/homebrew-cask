cask 'archiver' do
  version '3.0.7'
  sha256 '86cbb5fb2c3680b87b911bc642d0bdb6ea495dd11e00323ffcc271d5f863c6c0'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/archiver-#{version.major}.xml"
  name 'Archiver'
  homepage 'https://archiverapp.com/'

  depends_on macos: '>= :sierra'

  app 'Archiver.app'
end
