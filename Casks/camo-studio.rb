cask "camo-studio" do
  version "1.1.3,122"
  sha256 "40337450903d9d7c1d6c91acea1399e0614c0ed91ac534ac4522e7c17dc95968"

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
  name "Camo Studio"
  homepage "https://reincubate.com/camo/"

  auto_updates true

  app "Camo Studio.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin"
end
