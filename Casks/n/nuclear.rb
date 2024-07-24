cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.31"
  sha256 arm:   "68ca9faa7093b881b84d2fd707854e8b048ece1b999ea93c5f0b48f4a7d3cabb",
         intel: "b24d3de9126c4c7ac833d23169c193c70151618021c2627e2c60a0d74bbc695b"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
