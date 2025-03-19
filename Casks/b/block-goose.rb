cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.15"
  sha256 arm:   "0dbd064c8b2ead1d51d3d1a223b142d338e6792d84ebc789c54d1da814d23e5e",
         intel: "41873b69f17331b21c3dadaa624b7127bafe4bec6e4be7fa9cb24167997ea34c"

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
