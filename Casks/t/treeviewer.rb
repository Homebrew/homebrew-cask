# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "treeviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm: "dd530a459a691df44463cf7f39ed8415657ec5847db1d7dededa96fb1063ef8f",
         intel: "082cd5f0858511634c0e8a8e32a24137f54476b4314900c6c83cda9be7251d19"

  url "https://github.com/arklumpus/TreeViewer/releases/download/v#{version}/TreeViewer-Mac-#{arch}.dmg"
  name "TreeViewer"
  desc "Flexible, modular software to visualise and manipulate phylogenetic trees"
  homepage "https://github.com/arklumpus/TreeViewer"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://github.com/arklumpus/TreeViewer/releases/"
    strategy :github_latest
  end

  app "TreeViewer.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "/private/var/db/receipts/io.github.arklumpus.TreeViewer.bom",
    "/private/var/db/receipts/io.github.arklumpus.TreeViewer.plist"
  ]
end
