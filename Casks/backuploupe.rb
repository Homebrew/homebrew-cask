cask 'backuploupe' do
  version '2.13.6'
  sha256 '91040cae88a4cc34ad65c87e215a2557c178530077c2abc1934d91ca4a6070cd'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '24ffbc5f2b848c64c3351ed1dec0776c4c02e3eed6aa747197f7c05bcff9e5ef'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
