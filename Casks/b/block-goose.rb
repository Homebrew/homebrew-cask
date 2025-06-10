cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.27"
  sha256 arm:   "3581b9649388cd0bd6807113d80319d88ef22df62ea9bf85aab1173394fb9daa",
         intel: "f3673e2af7ce54c5ffd17d7fdb937f4a7df5aa59ab5a3736c4f876c3f3f9dd07"

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
