cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.20"
  sha256 arm:   "74b70aa598574c69f90ecf547b72159329d7d1a68e7afcc8d9ec1bd360df023c",
         intel: "70c04d1f395c13388c031a137b3607bd2a2208e27b646b75f5514353ba140d6a"

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
