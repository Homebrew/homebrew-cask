cask "nuclear" do
  version "0.6.23"
  sha256 "be144b078761b82ffba206724b2fd68ee79e67dd5f71d77b3b2cfdcf6e2cfce9"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}.dmg",
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
