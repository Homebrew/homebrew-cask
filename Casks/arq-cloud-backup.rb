cask 'arq-cloud-backup' do
  version '1.2.9'
  sha256 'b3c09f9db152f80c0e5ab3bf5d0f939a5442b6fee9b432ae5228ea22d737ec8f'

  url 'https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg'
  appcast 'https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html'
  name 'Arq Cloud Backup'
  homepage 'https://www.arqbackup.com/'

  pkg 'Install Arq Cloud Backup.pkg'

  uninstall pkgutil:   'com.haystacksoftware.ArqCloudBackup',
            quit:      'com.haystacksoftware.ArqCloudBackup',
            launchctl: 'com.haystacksoftware.arqcloudagent'
end
