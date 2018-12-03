cask 'arq-cloud-backup' do
  version '1.2.2'
  sha256 'f027225a30cdf8ae9faf60ddd170967d99614a0d8d8c617ce84ff0c6a319f5e3'

  url 'https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg'
  name 'Arq Cloud Backup'
  homepage 'https://www.arqbackup.com/'

  pkg 'Install Arq Cloud Backup.pkg'

  uninstall pkgutil:   'com.haystacksoftware.ArqCloudBackup',
            quit:      'com.haystacksoftware.ArqCloudBackup',
            launchctl: 'com.haystacksoftware.arqcloudagent'
end
