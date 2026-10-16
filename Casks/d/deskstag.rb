cask "deskstag" do
  version "1.0.7"
  sha256 "d786574dffedda526cdd67d3d032b7fb6cfdea2a39a3789242fbf8ebeb22d2d3"

  url "https://deskstag.com/DeskStag-#{version}.dmg"
  name "DeskStag"
  desc "Name and colour-code your desktops inside Mission Control"
  homepage "https://deskstag.com/"

  livecheck do
    url "https://deskstag.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "DeskStag.app"

  zap trash: "~/Library/Preferences/com.deskstag.app.plist"
end
