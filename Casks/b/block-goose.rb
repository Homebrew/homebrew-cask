cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.9.0"
  sha256 arm:   "21b2319127baac3271c89f151e0ac8ca1bd49010266d31aad8b88ec95856fb08",
         intel: "cfb58752cb8645f3867bad4f648ae3183f5215f824a71ede06716c154a3cc794"

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
