cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.22"
  sha256 arm:   "97da346b4d4fb0ea0531562c0dad01d33a74cd4eb7433d5a86b810462699e8b0",
         intel: "637e79a168d46bdeb24c6d04241a6f6a761330a37387b47924e1fded0683614b"

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
