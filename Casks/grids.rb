cask "grids" do
  version "7.0.6"
  sha256 "5066b3adedd8173d10e89926ea06262338baacf8eaf188d779ec8b6b299e3b6e"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  name "Grids"
  desc "Instagram desktop application"
  homepage "https://gridsapp.net/"

  livecheck do
    url "https://gridsapp.net/appcast.json"
    strategy :page_match
    regex(/"mac"\s*:\s*"(\d+(?:\.\d+)*)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Grids.app"

  uninstall quit: "com.thinktimecreations.Grids"

  zap trash: [
    "~/Library/Application Support/ThinkTimeCreations/Grids",
    "~/Library/Preferences/com.thinktimecreations.Grids.plist",
  ]
end
