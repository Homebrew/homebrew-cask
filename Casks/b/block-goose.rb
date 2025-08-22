cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.5.0"
  sha256 arm:   "deeafa5ed80f62814e579a06acb108f7f7ede1e1b6ddc7f3dd5df564321a3792",
         intel: "bb3d000b0f7ff08eb351a76dfbf94537b1702b8df4cceced372be06f6c11ceee"

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
