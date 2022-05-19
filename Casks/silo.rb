cask "silo" do
  version "2022.0.1"
  sha256 "b39802a2333febdafe8e35dd16ac1ccff9eb4ff86ab67971b866d1f9952778f8"

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
