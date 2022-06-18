cask "get-backup-pro" do
  version "3.6.7,1655"
  sha256 "9641f2816d55f3ae1afdbd2e80a27ae5f960c383c3f9b912a1fd03751e2cd2e5"

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
