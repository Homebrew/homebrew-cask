cask :v1 => 'backuploupe' do
  version '2.8.1'
  sha256 'eda82d5de8e0b7d1e841a3b79ac6712d9a5221920dd1aed05c9d19f4f497fd66'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  name 'BackupLoupe'
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => '21ad9c8633b2483e9e849ea00bfc2bc31f50fcc4f9edfbbeeb1fa47f2979fce5'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
