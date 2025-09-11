cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.8.0"
  sha256 arm:   "13e0f23c8a2547ea3dad693d938f3afd5afcf32d0c60ae75b4d62d28d14d055e",
         intel: "ce81fc038dbf8441ebd375f8d0fcfb1fdbbb84e62432592178c46079f5a9b5d4"

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
