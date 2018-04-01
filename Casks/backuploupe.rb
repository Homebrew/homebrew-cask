cask 'backuploupe' do
  version '2.13.4'
  sha256 '307d592287a34a82b16dc232c80e65561b0653123461e2ad03620f67b70dd549'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '64e18cd20cecb1b48b4522093e9289bb323b3d53474f750be080c782af9fcb2d'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
