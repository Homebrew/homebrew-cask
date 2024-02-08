cask "arq-cloud-backup" do
  version "1.5.1"
  sha256 :no_check

  url "https://www.arqbackup.com/download/arqcloudbackup/ArqCloudBackup.dmg"
  name "Arq Cloud Backup"
  desc "Backup software"
  homepage "https://www.arqbackup.com/"

  livecheck do
    url "https://www.arqbackup.com/download/arqcloudbackup/arqcloudbackup_release_notes.html"
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "Install Arq Cloud Backup.pkg"

  uninstall launchctl: "com.haystacksoftware.arqcloudagent",
            quit:      "com.haystacksoftware.ArqCloudBackup",
            pkgutil:   "com.haystacksoftware.ArqCloudBackup"
end
