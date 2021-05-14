cask "arq-cloud-backup" do
  version "1.5"
  sha256 :no_check

  url "https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg"
  appcast "https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html"
  name "Arq Cloud Backup"
  homepage "https://www.arqbackup.com/"

  pkg "Install Arq Cloud Backup.pkg"

  uninstall pkgutil:   "com.haystacksoftware.ArqCloudBackup",
            quit:      "com.haystacksoftware.ArqCloudBackup",
            launchctl: "com.haystacksoftware.arqcloudagent"
end
