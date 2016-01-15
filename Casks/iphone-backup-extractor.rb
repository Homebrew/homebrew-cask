cask 'iphone-backup-extractor' do
  version :latest
  sha256 :no_check

  url 'http://supercrazyawesome.com/downloads/iPhone%20Backup%20Extractor.app.zip'
  appcast 'http://supercrazyawesome.com/sparkle.xml',
          :checkpoint => 'dbed6231a752fb8fbdbab3956ffd48552ff2332333c01d682f1482fd982620cb'
  name 'iPhone Backup Extractor'
  homepage 'http://supercrazyawesome.com/'
  license :gratis

  app 'iPhone Backup Extractor.app'
end
