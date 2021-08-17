cask "silo" do
  version "2021.1.1"
  sha256 "450a7f0a774dddc7313921442d57f04e53f10c0a512b6190e978726f9e646959"

  url "https://nevercenter.com/silo/download/filearchive/Install_Silo_#{version.major}_#{version.minor}#{version.patch}_mac.dmg"
  name "Silo"
  desc "3D polygonal modeler and UV mapper"
  homepage "https://nevercenter.com/silo/"

  livecheck do
    url "https://nevercenter.com/silo/download/"
    regex(/Silo\s*(\d+(?:\.\d+)*)\s*/i)
  end

  depends_on macos: ">= :mojave"

  app "Silo.app"
end
