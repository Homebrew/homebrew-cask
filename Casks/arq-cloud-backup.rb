cask 'arq-cloud-backup' do
  version '1.4.4'
  sha256 '4b9c95a0e859dc89c709c6cfa313fb7cef1b46c6717516b267526b52aa290ea7'

  url 'https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg'
  appcast 'https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html'
  name 'Arq Cloud Backup'
  homepage 'https://www.arqbackup.com/'

  pkg 'Install Arq Cloud Backup.pkg'

  uninstall pkgutil:   'com.haystacksoftware.ArqCloudBackup',
            quit:      'com.haystacksoftware.ArqCloudBackup',
            launchctl: 'com.haystacksoftware.arqcloudagent'
end
