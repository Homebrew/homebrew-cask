cask "silo" do
  version "2023.2.0"
  sha256 "bac34f6a39a22a65e215e73734e2801d10f327ddec3da030340af6f49fd463c9"

  url "https://nevercenter.com/silo/download/filearchive/Install_Silo_#{version.major}_#{version.minor}#{version.patch}_mac.dmg"
  name "Silo"
  desc "3D polygonal modeler and UV mapper"
  homepage "https://nevercenter.com/silo/"

  livecheck do
    url "https://nevercenter.com/silo/download/"
    regex(/Silo\s*(\d+(?:\.\d+)+)\s*/i)
  end

  depends_on macos: ">= :mojave"

  app "Silo.app"

  zap trash: [
    "/Library/Caches/com.nevercenter.silo",
    "~/Library/Application Support/com.nevercenter.silo",
  ]
end
