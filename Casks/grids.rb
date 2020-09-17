cask "grids" do
  version "6.1.4"
  sha256 "8c5460e5e516a36a2504a303f02ebbb4322dba67fe1db7d206f69d2d94a710ec"

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
