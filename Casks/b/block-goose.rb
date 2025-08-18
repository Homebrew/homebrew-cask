cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.4.1"
  sha256 arm:   "07a349ea5d7268d90f3f03c8a1f07493246af6b2cf389327d6ef8dd0faa5e86f",
         intel: "ceb1872c6f80f2dacea3321c64393a91d48aa765564f8e44e626d8442084ff43"

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
