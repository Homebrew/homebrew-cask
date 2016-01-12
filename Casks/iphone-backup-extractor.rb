cask 'iphone-backup-extractor' do
  version :latest
  sha256 :no_check

  url 'http://supercrazyawesome.com/downloads/iPhone%20Backup%20Extractor.app.zip'
  appcast 'http://supercrazyawesome.com/sparkle.xml',
          :sha256 => '5b6e8c6065fa86b595431eef2622dec93f5eada09024608a4c19ec468c0275c5'
  name 'iPhone Backup Extractor'
  homepage 'http://supercrazyawesome.com/'
  license :gratis

  app 'iPhone Backup Extractor.app'
end
