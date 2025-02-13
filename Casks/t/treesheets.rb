cask "treesheets" do
  version "13301592566"
  sha256 "9464b234fc7c7d1de6b0dfbd5d116dfa12dba5e7d7d02e69f9e505632dc171f6"

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

  depends_on macos: ">= :catalina"

  app "TreeSheets.app"

  uninstall quit: "dot3labs.TreeSheets"

  zap trash: [
    "~/Library/Preferences/dot3labs.TreeSheets.plist",
    "~/Library/Preferences/TreeSheets Preferences",
    "~/Library/Saved Application State/dot3labs.TreeSheets.savedState",
  ]
end
