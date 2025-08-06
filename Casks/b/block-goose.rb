cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.2.0"
  sha256 arm:   "4de7393c071f0758316320640cfed334018e59425d69c156ba681e3cbdcd948a",
         intel: "c8af8d2c0e110cdcdb971429f93353a2a0d0aed38849d82f7132189f8f6b750c"

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
