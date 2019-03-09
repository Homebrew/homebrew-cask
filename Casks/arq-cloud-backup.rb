cask 'arq-cloud-backup' do
  version '1.3.2'
  sha256 'ffe7c2577dbe45b0dd2413271dfc7a25918fe11e02d3ec5670a885dd45e6bc67'

  url 'https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg'
  appcast 'https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html'
  name 'Arq Cloud Backup'
  homepage 'https://www.arqbackup.com/'

  pkg 'Install Arq Cloud Backup.pkg'

  uninstall pkgutil:   'com.haystacksoftware.ArqCloudBackup',
            quit:      'com.haystacksoftware.ArqCloudBackup',
            launchctl: 'com.haystacksoftware.arqcloudagent'
end
