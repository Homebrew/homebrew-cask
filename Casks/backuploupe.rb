cask 'backuploupe' do
  version '2.12'
  sha256 '4a100bfa67793debcfce3e632d97ffa5454a3b02b02d97a694f09ee8d489d93c'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '2949a49dac8dbf05ef3a3bccbade197849920e3bc8d697796e03205d3810b598'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
