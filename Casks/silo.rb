cask "silo" do
  version "2022.1.0"
  sha256 "bfb5c6b82952beaa621f14888c0f45bf36c0cacb88fdc0ee761aae55739455be"

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
