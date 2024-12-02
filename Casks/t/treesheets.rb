cask "treesheets" do
  version "12125479228"
  sha256 "dfd90960278a51633c091630f3b0b2f3ce9e119c6181a37a609d50579858bb95"

  url "https://github.com/aardappel/treesheets/releases/download/#{version}/mac_treesheets.zip",
      verified: "github.com/aardappel/treesheets/"
  name "TreeSheets"
  desc "Hierarchical spreadsheet and outline application"
  homepage "https://strlen.com/treesheets/"

  livecheck do
    url :url
    regex(/^(\d+)$/i)
    strategy :github_latest
  end

  app "TreeSheets.app"

  uninstall quit: "dot3labs.TreeSheets"

  zap trash: [
    "~/Library/Preferences/dot3labs.TreeSheets.plist",
    "~/Library/Preferences/TreeSheets Preferences",
    "~/Library/Saved Application State/dot3labs.TreeSheets.savedState",
  ]
end
