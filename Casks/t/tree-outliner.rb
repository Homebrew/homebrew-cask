cask "tree-outliner" do
  version "1.0.11"
  sha256 :no_check

  url "https://macplus-software.com/downloads/Tree%20Outliner.zip"
  name "Tree Outliner"
  desc "Text outliner"
  homepage "https://noteifyapp.com/tree-outliner/"

  livecheck do
    url "https://macplus-software.com/downloads/Tree%20Outliner.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tree Outliner.app"

  zap trash: [
    "~/Library/Application Support/com.macplus-software.treeoutliner",
    "~/Library/Caches/com.macplus-software.treeoutliner",
    "~/Library/HTTPStorages/com.macplus-software.treeoutliner",
    "~/Library/Preferences/com.macplus-software.treeoutliner.plist",
  ]
end
