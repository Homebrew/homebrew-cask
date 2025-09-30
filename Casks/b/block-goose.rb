cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.9.1"
  sha256 arm:   "c5b043d68a024c47e020b1f008ebfc85bbba399b1a39d80bdf19c8221f0e2def",
         intel: "61e1f7954699e156fda66dac6dbbe2b23a6b167cd6f165bb40258a2f4a49540d"

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
