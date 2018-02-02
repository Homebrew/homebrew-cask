cask 'backuploupe' do
  version '2.13.2'
  sha256 '9518ace482429faf51a72aaf6431b004153a02430c5098df1b2cdf29a3c54ed8'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: 'b9f37ec88c0ecbdcc119cdceb08e9fc9a92caf69f18c70264d967325bfda5ffd'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
