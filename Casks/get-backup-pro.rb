cask "get-backup-pro" do
  version "3.7,1722"
  sha256 "adef97f51d24ad5fc2e68fb4841d67bb37dd4d5ceae129995172e049e8af05ef"

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
