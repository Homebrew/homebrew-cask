cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.1.3"
  sha256 arm:   "32b3527ad27ece9018172c8f892c78f9941e56fb7845a9d2250d2c8952868867",
         intel: "2c8c9afc613548fc19650f318c75302ce545d584511e758c9b8c06c010f935bc"

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
