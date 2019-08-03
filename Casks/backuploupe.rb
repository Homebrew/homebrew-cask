cask 'backuploupe' do
  version '2.16'
  sha256 '2e8d0ebfbcd20a010e481a5e82dd683f6feae06fe8b7ef40e9043b1c60f14efe'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
