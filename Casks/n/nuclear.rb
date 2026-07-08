cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.2"
  sha256 arm:   "47f1dbd7f97a9abca4824fb77dfcb1a0c1f1d4d5bbdf8cca4d6d29bde27b4ae5",
         intel: "f52b0c278d5db8f59ce6813a1428481959e7c3209a5c94428b984f8fdb3a2a85"

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
