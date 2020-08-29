cask "grids" do
  version "6.1.3"
  sha256 "09a4a91bb55f863a76b849537f48423470a09216ba90571fc3f163b6e2b6c6fc"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  appcast "https://gridsapp.net/appcast.json"
  name "Grids"
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
