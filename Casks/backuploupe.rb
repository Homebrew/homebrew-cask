cask 'backuploupe' do
  version '3.0.1'
  sha256 '674247a93782b4ad22ccfeb32ebaf48a1d0cd50152a632248a21a131ca192f26'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
