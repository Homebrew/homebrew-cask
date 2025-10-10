cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.9.3"
  sha256 arm:   "b3d8f3ecdc96814d533fa465bd099900f4e1d54ee6ea4f87cb2fe2d8e0b43e6f",
         intel: "996cdc54a59e062a39d87b4959c53adf3d53e2df60842623b8f75b333e169b5a"

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
