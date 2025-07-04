cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.32"
  sha256 arm:   "9bceb9e10d496028d9efab4be0ddbea80262e89a5e27bc4ab24c1b8eb7710688",
         intel: "dd6848e97d231ff14791afff34048a092b3893b5456b996b719be38deb4385d7"

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
