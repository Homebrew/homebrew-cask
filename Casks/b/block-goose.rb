cask "block-goose" do
  version "1.0.10"
  sha256 "3c245fef23b0b0a122418f1afe856c018dc9da725bd655ad95b9f8b1781c4f09"

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
