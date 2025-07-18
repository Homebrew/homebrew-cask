cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.1.2"
  sha256 arm:   "21ee92796f094927a8411a2e231b610b9c0bad4667fc03a891790a64283a009c",
         intel: "e939c0667e7e0f1bbcaf881e431bd89295ff979639675f74765bfb06167fd6c5"

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
