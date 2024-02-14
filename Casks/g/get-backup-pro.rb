cask "get-backup-pro" do
  version "3.7.3"
  sha256 "814173025816992dce2e90c2075c25641c440bec1edfba82920af43c1e0f41e8"

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
end
