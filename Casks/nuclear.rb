cask "nuclear" do
  version "0.6.11"
  sha256 "b17d431fa76684e32f3275bd572b21ee4f1237f85b0cc0ccfeae3cc97593a3b2"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-#{version}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
