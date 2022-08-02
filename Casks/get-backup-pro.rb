cask "get-backup-pro" do
  version "3.6.8,1667"
  sha256 "e680424a4d65a28639007dfef26ef48c07a11364011b13bf1c984b42b7ba63a2"

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
