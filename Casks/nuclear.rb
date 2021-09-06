cask "nuclear" do
  version "0.6.16"
  sha256 "4487cb19350f30e7731e259f368773f507c99675e92573eafbfbd24cbd4c7a89"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}.dmg",
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
