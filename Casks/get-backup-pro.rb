cask "get-backup-pro" do
  version "3.6.4,1584"
  sha256 "703f3f3580f8c0a731ce0baef6ebbfc8cc8b43b2c7ccb4658cf4392d17506eb3"

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
