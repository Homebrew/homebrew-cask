cask 'backuploupe' do
  version '2.9.3'
  sha256 '75ba605a8312258752374523104eb4480776acb75f7bf8cb3010f3833c2a2a68'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '39c87da8ae335a0f2f314cadf3642c40d875cc59b8a02b718683fd5cfebbfb78'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
