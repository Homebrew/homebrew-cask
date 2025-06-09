cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.26"
  sha256 arm:   "11e9d368caf434ed215125146e209f36f4a614a18c0ca0512f5de41185076032",
         intel: "bccdb280a6f9fcc6fdfc9fbb37364cead8555a220f6200d6dc1caf249ce1555e"

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
