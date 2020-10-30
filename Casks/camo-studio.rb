cask "camo-studio" do
  version "1.1,110"
  sha256 "c4c595eaf15b27e9972794f0a4e89e2d00bfe2b200839bb727976bdf9febe419"

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
  name "Camo Studio"
  homepage "https://reincubate.com/camo/"

  auto_updates true

  app "Camo Studio.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin"
end
