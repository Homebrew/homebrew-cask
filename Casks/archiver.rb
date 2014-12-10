cask :v1 => 'archiver' do
  version :latest
  sha256 :no_check

  url 'https://commondatastorage.googleapis.com/incrediblebee/apps/Archiver/Archiver.zip'
  homepage 'http://archiverapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Archiver.app'
end
