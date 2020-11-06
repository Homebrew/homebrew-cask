cask "camo-studio" do
  version "1.1.1,112"
  sha256 "b570b70ee6e544b81c60334fedd74c094dfe9bfa62d699676df95cdc84bb54a4"

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
  name "Camo Studio"
  homepage "https://reincubate.com/camo/"

  auto_updates true

  app "Camo Studio.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin"
end
