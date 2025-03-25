cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.44"
  sha256 arm:   "4bb8b645c6f0739300e8a9eebbbbc2ba9f20002965cd62e38c6c42fd60930352",
         intel: "759e487493533eae348018b560005ea65d91791f1a3ea4cadb8ce1cc644fa719"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
