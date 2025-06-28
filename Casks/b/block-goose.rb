cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.30"
  sha256 arm:   "f93e3ab28a9568f8e602f4d0090051a489d2178f2726b3d9d059d7d3759712c6",
         intel: "9b64b4a0cd1c5c46d8301969436fd229c6956c4447185c90d9bd7a961874aed1"

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
