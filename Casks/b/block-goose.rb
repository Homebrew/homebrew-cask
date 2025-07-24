cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.1.4"
  sha256 arm:   "32f671f1427a7bb27ff659b08dcea3bddd1d8614201aba97afca4244b8180d7a",
         intel: "14c08074a88f3abc6ed803d4567370590e3c47c5456c01f720787a8a63852cf1"

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
