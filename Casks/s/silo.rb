cask "silo" do
  version "2024.0.0"
  sha256 "54bc87c37efe52b0760633c8c51c8d61236e6b5c46431bb73187afececd8b8c9"

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
