cask :v1 => 'archiver' do
  version :latest
  sha256 :no_check

  # googleapis.com is the official download host per the vendor homepage
  url 'https://commondatastorage.googleapis.com/incrediblebee/apps/Archiver/Archiver.zip'
  name 'Archiver'
  homepage 'http://archiverapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Archiver.app'
end
