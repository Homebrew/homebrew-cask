cask 'backuploupe' do
  version '2.13.3'
  sha256 '9ad1a76d0f48ca531f9ed5923db6d0adf44744c11d86682a8ab563d7399f64fb'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '44ab30676303886d8bf27f5c634f2dd8cf124b0047e9ebb25c819a54080d56f7'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
