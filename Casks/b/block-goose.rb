cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.7.0"
  sha256 arm:   "c8aed2c3a9883206454b60b1001009cf4479e3c9b3e4de4a47698bfd59f48772",
         intel: "2602216d149ca4dffddf2eae42c028d1f24b6bd3106cf1e6111672fce0737878"

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
