cask "arq-cloud-backup" do
  version "1.4.7"
  sha256 "4dba681a6a979e9f6fe8ab8096116e411a4b14238827f11658993a65a1231e0a"

  url "https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg"
  appcast "https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html"
  name "Arq Cloud Backup"
  homepage "https://www.arqbackup.com/"

  pkg "Install Arq Cloud Backup.pkg"

  uninstall pkgutil:   "com.haystacksoftware.ArqCloudBackup",
            quit:      "com.haystacksoftware.ArqCloudBackup",
            launchctl: "com.haystacksoftware.arqcloudagent"
end
