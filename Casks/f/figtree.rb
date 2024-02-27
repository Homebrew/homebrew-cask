cask "figtree" do
  version "1.4.4"
  sha256 "4a11741143982a9b7fea78e60c8315ce8e8436eeb96ab3ee5376c53c83e54b9b"

  url "https://github.com/rambaut/figtree/releases/download/v#{version}/FigTree.v#{version}.dmg"
  name "FigTree"
  desc "Phylogenetic tree viewer"
  homepage "https://github.com/rambaut/figtree/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FigTree v#{version}.app"
  qlplugin "QuickLook Plugin/FigTreeQuickLookPlugin.qlgenerator"
end
