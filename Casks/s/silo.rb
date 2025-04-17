cask "silo" do
  version "2025.1.0"
  sha256 "713beb356a1ad96cdd248e039331b4fa7d7253461d956ad6df1c1a8c5a7ff64d"

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
