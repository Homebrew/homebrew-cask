cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.33.1"
  sha256 arm:   "06c376c1196501ab87cd21e7160ab5ca1deb3445cb92cf8d64508b0f6bf8d829",
         intel: "e908913f76385d05308698553206382e3d6d4d746012490e864973208e0f8585"

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

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
