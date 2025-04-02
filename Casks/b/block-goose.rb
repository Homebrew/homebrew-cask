cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.17"
  sha256 arm:   "59ca44f5ed18fce2ab8a659f83e3025f9fa2c179cddb03d7f4a38092688727df",
         intel: "80f80cf65ffdccac0e09e6185b642521a5797c4d315ba4ed686cb792524dbc90"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip",
      verified: "github.com/block/goose/"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
