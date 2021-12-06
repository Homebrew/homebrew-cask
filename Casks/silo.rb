cask "silo" do
  version "2021.4.0"
  sha256 "5600da9ab3e5b166e01f63525b1ad64651c307212563891cc73448cd0d646184"

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
end
