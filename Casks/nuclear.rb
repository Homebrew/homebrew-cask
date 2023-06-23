cask "nuclear" do
  version "0.6.23"
  sha256 "bf1678edd99869275fbd7e92c4d53cfdd68daecb576f110b4cb5210756ef0c7a"

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
