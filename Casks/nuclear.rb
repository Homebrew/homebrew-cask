cask "nuclear" do
  version "0.6.17"
  sha256 "2d5f4040b10ef334abbee29f3b49dc570606dcb2ff8af5952e50ddd9ab28f3ac"

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
