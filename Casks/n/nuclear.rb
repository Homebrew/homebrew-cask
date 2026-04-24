cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.34.1"
  sha256 arm:   "327c47c486f490feb903f4fea24b352ca9b7febfe79b4cbd06c9f6fcda2a9508",
         intel: "11d24a3b5f47119616b261b5fe5f633c24f9a3ee0bc66d7459e3ae6f4a211ba7"

  url "https://github.com/nukeop/nuclear/releases/download/player%40#{version}/Nuclear_#{version}_#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclearplayer.com/"

  livecheck do
    url :url
    regex(/^(?:player@)?v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
