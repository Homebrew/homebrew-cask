cask 'backuploupe' do
  version '3.0.2'
  sha256 '2862d9f49334011f964f0929ef923bf09dc8ce3c356563b46c72b9d11ac87d03'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
