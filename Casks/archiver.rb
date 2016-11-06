cask 'archiver' do
  version :latest
  sha256 :no_check

  # googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url 'http://commondatastorage.googleapis.com/incrediblebee/apps/Archiver-3/Archiver.zip'
  name 'Archiver'
  homepage 'http://archiverapp.com/'

  app 'Archiver.app'
end
