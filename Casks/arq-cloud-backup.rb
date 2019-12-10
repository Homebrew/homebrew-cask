cask 'arq-cloud-backup' do
  version '1.4.2'
  sha256 'b557df1ab91afe53d64027c67739222605f80570d4e8c9ee2674b61019a6687d'

  url 'https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg'
  appcast 'https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html'
  name 'Arq Cloud Backup'
  homepage 'https://www.arqbackup.com/'

  pkg 'Install Arq Cloud Backup.pkg'

  uninstall pkgutil:   'com.haystacksoftware.ArqCloudBackup',
            quit:      'com.haystacksoftware.ArqCloudBackup',
            launchctl: 'com.haystacksoftware.arqcloudagent'
end
