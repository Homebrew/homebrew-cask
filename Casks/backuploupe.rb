cask 'backuploupe' do
  version '3.0.3'
  sha256 '8e052992475f0c8f3263b4b0a6ddcb4139a0e72fae88d42029f5ee8c64730b76'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
