class Backuploupe < Cask
  version '2.5.1'
  sha256 '843846a40222d90e87870dbe88fd092c6cb36ed957978af9e7052eec16cdf35c'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :unknown

  app 'BackupLoupe.app'
end
