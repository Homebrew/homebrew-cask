cask :v1 => 'archiver' do
  version :latest
  sha256 :no_check

  # googleapis.com is the official download host per the vendor homepage
  url 'https://commondatastorage.googleapis.com/incrediblebee/apps/Archiver-3/Archiver.zip'
  name 'Archiver'
  homepage 'http://archiverapp.com/'
  license :commercial

  app 'Archiver.app'
end
