cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.1.0"
  sha256 arm:   "78ae12d4fa5a5e25690c835d61cbcd60002ccbd8469581aa73e72265c7c4e9ac",
         intel: "80676a1022f2de4ebb1dd49b0e05c783a88bb9ba4e03ffce094f41ef556c841c"

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
