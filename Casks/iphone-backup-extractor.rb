cask :v1 => 'iphone-backup-extractor' do
  version :latest
  sha256 :no_check

  url 'http://supercrazyawesome.com/downloads/iPhone%20Backup%20Extractor.app.zip'
  homepage 'http://supercrazyawesome.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iPhone Backup Extractor.app'
end
