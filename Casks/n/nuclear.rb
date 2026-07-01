cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.41.4"
  sha256 arm:   "4a8eacef75937d2b2a0a02f43d09fc2d8882f47ca70114ee84b67824b44d3d96",
         intel: "05b692f730597aa0703cafadde142053b18f6b1fa8bad7ac3ddd97f53d1697de"

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
