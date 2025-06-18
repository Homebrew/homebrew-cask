cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.29"
  sha256 arm:   "9726d7420be50ab12c1e9382e2288b312aba34ca9517afe6ffd4f23d010494ef",
         intel: "c735bbd162675bcd639fbc49b85156bc0e47cbcd0decce35a093bc5e4665c0f9"

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
