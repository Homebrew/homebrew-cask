cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.35"
  sha256 arm:   "8c5c6054c5a936c80bfb05208b31927f7bd1be682e80cb7013509028b7d5aa51",
         intel: "500931661dbf4b193d2633a906265e8c725098dc1770542401d372b1fb4753ab"

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
