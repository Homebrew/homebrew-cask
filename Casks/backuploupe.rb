cask 'backuploupe' do
  version '2.13.1'
  sha256 'f36f95de4e96088e3d023329f9e8cd0ae24e694a748b4567309457e49d0df374'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '9a712ba4a09dd4563e6e915631a88bb22229ac6e32694d99efa905766c8784c8'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
