cask "treeviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "dd530a459a691df44463cf7f39ed8415657ec5847db1d7dededa96fb1063ef8f",
         intel: "082cd5f0858511634c0e8a8e32a24137f54476b4314900c6c83cda9be7251d19"

  url "https://github.com/arklumpus/TreeViewer/releases/download/v#{version}/TreeViewer-Mac-#{arch}.dmg"
  name "TreeViewer"
  desc "Phylogenetic tree viewer"
  homepage "https://github.com/arklumpus/TreeViewer"

  app "TreeViewer.app"

  zap trash: [
    "/private/var/db/receipts/io.github.arklumpus.TreeViewer.bom",
    "/private/var/db/receipts/io.github.arklumpus.TreeViewer.plist",
  ]
end
