cask "get-backup-pro" do
  version "3.7.3"
  sha256 "248f6eae946f266318f687c02de7265089380b8e763701f8f0ff3f212829bdd6"

  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip",
      verified: "belightsoft.s3.amazonaws.com/updates/"
  name "Get Backup Pro #{version.major}"
  desc "Backup software with folder synchronisation"
  homepage "https://www.belightsoft.com/products/getbackup/"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Get Backup Pro #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Get Backup #{version.major}",
    "~/Library/HTTPStorages/com.belightsoft.GetBackupPro#{version.major}",
    "~/Library/Preferences/com.belightsoft.GetBackupPro#{version.major}.plist",
  ]
end
