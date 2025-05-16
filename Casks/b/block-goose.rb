cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.24"
  sha256 arm:   "bf949f336c6fb1573dff453982d2fad411fc1c68a4020b334f7c868ddebc47cb",
         intel: "24411a1f188c7c33b9658ae3dbbb65e5a26ad0b395fd9b38a11dfa45876af394"

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
