cask 'arq-cloud-backup' do
  version '1.3.2.1'
  sha256 'bc14aa4a852657aabe37e05112ea0aa13066afb7d1267705e2345ea1501f3d74'

  url 'https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg'
  appcast 'https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html'
  name 'Arq Cloud Backup'
  homepage 'https://www.arqbackup.com/'

  pkg 'Install Arq Cloud Backup.pkg'

  uninstall pkgutil:   'com.haystacksoftware.ArqCloudBackup',
            quit:      'com.haystacksoftware.ArqCloudBackup',
            launchctl: 'com.haystacksoftware.arqcloudagent'
end
