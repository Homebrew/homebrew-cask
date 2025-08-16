cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.4.0"
  sha256 arm:   "bc0cc8e468c0e023526d2ea89c714f5ff4a37a3c14ea9f0d4c9f30e62124f48c",
         intel: "3f8a8c428a90f635f2b9ed2cc7b0a5a856b24879fc06ef80baa8302896bd60a4"

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
