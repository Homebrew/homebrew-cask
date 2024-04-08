cask "treesheets" do
  version "8589805436"
  sha256 "3261117b9cef696763c2e436a85fa6e31b8b3bdf25e5aa8a09cde17520e36304"

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
