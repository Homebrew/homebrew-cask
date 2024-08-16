cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.37"
  sha256 arm:   "1f2d69e4f63688cfe40422fa2cfe331c0884bb41291691b926364f8ff08df5dd",
         intel: "fa012e2faf4b3b4f6f2d8496b4e8734dab7861ce3cdd9d453614aaff5fa36f60"

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
