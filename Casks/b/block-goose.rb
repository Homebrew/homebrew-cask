cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.9.2"
  sha256 arm:   "c92a13153dd914cf7b2a4dd15e1feefe60991ad5ac888b7a3cbb5a88df458a97",
         intel: "ef180e3bb2c20ece00579dfd7b987e3946ee4c0fb021006ebeaf7002cb2b0603"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip",
      verified: "github.com/block/goose/"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
