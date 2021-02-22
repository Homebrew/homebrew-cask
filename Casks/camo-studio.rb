cask "camo-studio" do
  version "1.2.4,144"
  sha256 "37aea984109f4c8bf6f007a8bd8cb55de2e745773684c8cca3d736b421023ce0"

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  name "Camo Studio"
  desc "Use your phone as a pro webcam to look amazing on video calls"
  homepage "https://reincubate.com/camo/"

  livecheck do
    url "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
    strategy :sparkle
  end

  auto_updates true

  app "Camo Studio.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin"
end
