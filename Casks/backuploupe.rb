cask 'backuploupe' do
  version '2.9.2'
  sha256 '24fbb4abb06fd7154e5b16fe50b74881dad441f3f4f860a9ab48f7aeb85f9854'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '69a84724409286bf9840f1fea3e00e598180f2cf1223d9fe576ac28dba8ca091'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
