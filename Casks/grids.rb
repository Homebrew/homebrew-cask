cask "grids" do
  version "6.1.3"
  sha256 "e2644c51f1d5de088bc19d64c14c9fd63c40e066081103171b5bbb1ec3314d37"

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
