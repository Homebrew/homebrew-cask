cask "silo" do
  version "2021.2.0"
  sha256 "d5b7df6b22e0feda43c84ff014dfaace31c532238f1a3f55aa85855913a29f65"

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
