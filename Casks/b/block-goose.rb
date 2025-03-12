cask "block-goose" do
  version "1.0.13"
  sha256 "e62d1ca0d9c1a2384ac2870765490222e5b3848a420e4725f65ca797aae26496"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose.zip",
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
