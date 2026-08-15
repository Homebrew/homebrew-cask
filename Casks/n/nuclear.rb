cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.47.0"
  sha256 arm:   "1e8b91824b3dae1a0d38f0e90d6e3d33375ba2972e655d22f29b24c4d46c821f",
         intel: "f1db79237a510e02e8bc74b50e6b6679aca2f86ca3e6fc1ea1a744c0e59f209f"

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
    "~/Library/Application Support/com.nuclearplayer",
    "~/Library/Application Support/nuclear",
    "~/Library/Caches/com.nuclearplayer",
    "~/Library/Logs/com.nuclearplayer",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
    "~/Library/WebKit/com.nuclearplayer",
  ]
end
