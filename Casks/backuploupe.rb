cask 'backuploupe' do
  version '2.13.6'
  sha256 '91040cae88a4cc34ad65c87e215a2557c178530077c2abc1934d91ca4a6070cd'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
