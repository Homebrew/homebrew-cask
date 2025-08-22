cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.6.0"
  sha256 arm:   "c4e9d07b16ca8e7993ad9496ae07ee2259c11490baac72b46c10289ffe704780",
         intel: "e88e692e4bb71c69dcad6898c553ceacfafb80c449730ef17463ade0e2507d2b"

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
