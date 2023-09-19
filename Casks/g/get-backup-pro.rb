cask "get-backup-pro" do
  version "3.7.2"
  sha256 "58049a869461eedfc798f789e8525fdf6c1e95a9e03a6fc4335b62bcc3349e56"

  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip",
      verified: "belightsoft.s3.amazonaws.com/updates/"
  name "Get Backup Pro #{version.major}"
  desc "Backup software with folder synchronization"
  homepage "https://www.belightsoft.com/products/getbackup/"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
