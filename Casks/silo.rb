cask "silo" do
  version "2021.3.0"
  sha256 "20bb9f4f1a9a19856f7c8b082d4c16c5a07ea0f9625998141d9b8582f75ca72b"

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
