cask 'arq-cloud-backup' do
  version '1.2.1'
  sha256 '146b7203e3374fc84a461f32648b2bef1d6bbd599a76ccdf66c2011540f80cf2'

  url 'https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg'
  name 'Arq Cloud Backup'
  homepage 'https://www.arqbackup.com/'

  pkg 'Install Arq Cloud Backup.pkg'

  uninstall pkgutil:   'com.haystacksoftware.ArqCloudBackup',
            quit:      'com.haystacksoftware.ArqCloudBackup',
            launchctl: 'com.haystacksoftware.arqcloudagent'
end
