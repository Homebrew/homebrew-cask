cask "get-backup-pro" do
  version "3.6.5,1616"
  sha256 "526753328ec07ce8e61b55e9f6639d87c9cd4263255680dec87fe5e370235777"

  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip",
      verified: "belightsoft.s3.amazonaws.com/updates/"
  name "Get Backup Pro #{version.major}"
  desc "Backup software with folder synchronization"
  homepage "https://www.belightsoft.com/products/getbackup/"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
