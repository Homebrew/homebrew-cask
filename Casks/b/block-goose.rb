cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.3.0"
  sha256 arm:   "8dca9910de13353e30a646e033c78aac18b317fae44a9055ca7e15a9a88d740c",
         intel: "155ccbc4920fa442d1e0fc14af7417bed41cda0e57c6cc6163481485717635a4"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip",
      verified: "github.com/block/goose/"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
