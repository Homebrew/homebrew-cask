cask :v1 => 'backuploupe' do
  version '2.6'
  sha256 '48e758d7d28dbacfbdba9ae6800888d513917a2138593efc1d6db407b993208b'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => '94f9d343459113a27a59933b6e9fb8bcb2b32cb4b2c49faf32152c8fb1de1da3'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
