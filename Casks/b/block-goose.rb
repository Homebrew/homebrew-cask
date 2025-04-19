cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.19"
  sha256 arm:   "eb99cafcaaf7d408e467487238eb82ca4b4b44fe21b28154742914d75fbbcc28",
         intel: "bf9face9a0a736425ed0946b2e81b36893b9e58419f63574872492b3fcc2e5da"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip",
      verified: "github.com/block/goose/"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
