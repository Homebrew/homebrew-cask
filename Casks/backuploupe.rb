cask 'backuploupe' do
  version '3.0'
  sha256 '128d2e74227784063bdf64b1bfe62476dcd0a8154cf0bd121547c86d92773eb8'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast "https://www.soma-zone.com/BackupLoupe/a/appcast-update-#{version.major}.xml"
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
