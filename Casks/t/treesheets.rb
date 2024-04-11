cask "treesheets" do
  version "8638587388"
  sha256 "27020ba45ad66503bf92224ed68bcf7b7c3c71b00a44145fd8df0439c96d8856"

  url "https://github.com/aardappel/treesheets/releases/download/#{version}/mac_treesheets.zip",
      verified: "github.com/aardappel/treesheets/"
  name "TreeSheets"
  desc "Hierarchical spreadsheet and outline application"
  homepage "https://strlen.com/treesheets/"

  livecheck do
    url :url
    regex(/^(\d+)$/)
    strategy :github_latest
  end

  app "build/Build/Products/Release/TreeSheets.app"

  uninstall quit: "dot3labs.TreeSheets"

  zap trash: [
    "~/Library/Preferences/dot3labs.TreeSheets.plist",
    "~/Library/Preferences/TreeSheets Preferences",
    "~/Library/Saved Application State/dot3labs.TreeSheets.savedState",
  ]
end
