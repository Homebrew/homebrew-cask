cask "treesheets" do
  version "9895562603"
  sha256 "adfef6f8140e54c6620451a5c346d35127290ff9692eaef691253ba4c14dfced"

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
