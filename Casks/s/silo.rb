cask "silo" do
  version "2025.2"
  sha256 "3751133586904f76840ee40778792d43c954e039ab6f346ce54093a1eca67cdb"

  url "https://nevercenter.com/silo/download/filearchive/Install_Silo_#{version.major}_#{version.minor}_#{version.patch.presence || "0"}_mac.dmg"
  name "Silo"
  desc "3D polygonal modeller and UV mapper"
  homepage "https://nevercenter.com/silo/"

  livecheck do
    url "https://nevercenter.com/silo/download/"
    regex(/Silo\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  app "Silo.app"

  zap trash: [
    "/Library/Caches/com.nevercenter.silo",
    "~/Library/Application Support/com.nevercenter.silo",
  ]
end
