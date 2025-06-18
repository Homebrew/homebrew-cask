cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.28"
  sha256 arm:   "e763500d47923dbd933c79c08c62193c7f683302062c3ab4e8a0fa8e73326151",
         intel: "16350a4d2544d8ba113e8df0a1ae75b20fcd20069b6e7a7a322ad4d98bf538ca"

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
