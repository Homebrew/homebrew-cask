cask "camo-studio" do
  version "1.0.9,90"
  sha256 "e14041b4163088d9a1a5cb8c03e6137177497b0b8e6ad8e299dc39d55faf1565"

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
  name "Camo Studio"
  homepage "https://reincubate.com/camo/"

  auto_updates true

  app "Camo Studio.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin"
end
