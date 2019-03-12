cask 'backuploupe' do
  version '2.14.4'
  sha256 'ed6b717f6b39f3ee456570b53b11634b3d8fa0e61a5394482359a11349b6c18c'

  url "http://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
