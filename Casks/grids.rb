cask "grids" do
  version "6.1.5"
  sha256 "cf0e0178270b6000e98a7ee03bf166aa9779b3ae750951a47d1c1e7afb4cf378"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  appcast "https://gridsapp.net/appcast.json"
  name "Grids"
  desc "Instagram desktop application"
  homepage "https://gridsapp.net/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Grids.app"

  uninstall quit: "com.thinktimecreations.Grids"

  zap trash: [
    "~/Library/Application Support/ThinkTimeCreations/Grids",
    "~/Library/Preferences/com.thinktimecreations.Grids.plist",
  ]
end
