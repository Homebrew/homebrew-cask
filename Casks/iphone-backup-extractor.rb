cask 'iphone-backup-extractor' do
  version '1.2.4'
  sha256 '23243aaf390e20729c39aa449cc4c6fa45892ece2685483c40f88d68fbbb73d5'

  url 'http://supercrazyawesome.com/downloads/iPhone%20Backup%20Extractor.app.zip'
  appcast 'http://supercrazyawesome.com/sparkle.xml',
          checkpoint: 'dbed6231a752fb8fbdbab3956ffd48552ff2332333c01d682f1482fd982620cb'
  name 'iPhone Backup Extractor'
  homepage 'http://supercrazyawesome.com/'

  app 'iPhone Backup Extractor.app'
end
