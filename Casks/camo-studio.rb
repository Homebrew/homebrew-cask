cask "camo-studio" do
  version "1.0.8,83"
  sha256 "d932c9101ffa83075682f7c78195275f58d733da156bd8dde971f8700b3aa227"

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  appcast "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
  name "Camo Studio"
  homepage "https://reincubate.com/camo/"

  auto_updates true

  app "Camo Studio.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/ReincubateCamoDAL.plugin"
end
