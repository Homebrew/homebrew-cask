cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.31"
  sha256 arm:   "8f2bd136b6b4f037d0fbfffa0d9121f7b269b8fea62ac943b14e437adcaa9f8d",
         intel: "90cc92dd9d7be429a2f5e9429315ec6b7416746457e04457cd9c8b6e9ef1c6e2"

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
