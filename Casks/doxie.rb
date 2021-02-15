cask "doxie" do
  version "2.13"
  sha256 "166a521160a6a6056cf81437fa4720f3400bb5e59b8fbdd5fe4f6729a96391a0"

  url "https://download.getdoxie.com/Doxie-#{version}.dmg"
  name "Doxie"
  desc "Companion app for scanner hardware"
  homepage "https://www.getdoxie.com/"

  livecheck do
    url "https://r.getdoxie.com/app/sparkle/doxie-macos.xml"
    strategy :sparkle
  end

  app "Doxie.app"
end
