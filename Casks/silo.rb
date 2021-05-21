cask "silo" do
  version "2021.1.0"
  sha256 "6312811094401449deb0bd2862fb69765872f67c0c6bbfabbab4d93e63560544"

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
