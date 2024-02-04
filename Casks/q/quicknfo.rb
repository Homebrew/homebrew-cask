cask "quicknfo" do
  version "1.2"
  sha256 "ee5c03f78ff60e69e776bec39896ac48496915de35fcb3e2bd0d9c20ad92b5bb"

  url "https://github.com/The-Master777/QuickNFO/releases/download/v#{version}/QuickNFO.qlgenerator.zip"
  name "QuickNFO"
  desc "Quick Look plugin for viewing NFO files"
  homepage "https://github.com/planbnet/QuickNFO"

  qlplugin "QuickNFO.qlgenerator"

  # No zap stanza required
end
