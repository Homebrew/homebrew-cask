cask 'backuploupe' do
  version '2.9.4'
  sha256 '7664eb4c84c1a33ef87af93da5f3a50af752a119ad50eacedb01cc8422ed9774'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '5ff1d0779c611935e25441ac3c122b809c85d7e93bd25c6c264591eb167522e0'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
