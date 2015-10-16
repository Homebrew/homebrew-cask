cask :v1 => 'iphone-backup-extractor' do
  version :latest
  sha256 :no_check

  url 'http://supercrazyawesome.com/downloads/iPhone%20Backup%20Extractor.app.zip'
  name 'iPhone Backup Extractor'
  appcast 'http://supercrazyawesome.com/sparkle.xml',
          :sha256 => '9741720f2335c72c43b297545c4c834d4ad1064f24fc582af9802cd627bb6d83'
  homepage 'http://supercrazyawesome.com/'
  license :gratis

  app 'iPhone Backup Extractor.app'
end
