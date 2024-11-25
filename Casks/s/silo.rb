cask "silo" do
  version "2025.0"
  sha256 "1c86a344eaf8497ac6b74dd5a488c7b1946d45b67fe77062935f29c98cb3875b"

  url "https://nevercenter.com/silo/download/filearchive/Install_Silo_#{version.major}_#{version.minor}#{version.patch.presence || "0"}_mac.dmg"
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
