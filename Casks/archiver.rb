cask 'archiver' do
  version '3.0.6'
  sha256 'c27ec23f93b10599a811597a106b9cdec6655552ddb82c637992f8bdbbc82fd2'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/archiver-#{version.major}.xml"
  name 'Archiver'
  homepage 'https://archiverapp.com/'

  depends_on macos: '>= :sierra'

  app 'Archiver.app'
end
