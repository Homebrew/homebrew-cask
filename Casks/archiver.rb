cask 'archiver' do
  version :latest
  sha256 :no_check

  # googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url 'https://commondatastorage.googleapis.com/incrediblebee/apps/Archiver/Archiver.zip'
  name 'Archiver'
  homepage 'http://archiverapp.com/'
  license :commercial

  app 'Archiver.app'
end
