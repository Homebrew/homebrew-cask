cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.2"
  sha256 arm:   "a64814982308384bcd139ae481a00fb422b2033a4aa13a5ceed3e4bb489b5fd4",
         intel: "359146e57c4a15614dd8c785ff3ab4c2c6cd38e5c29ce223194fa0a6c70fa1a8"

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
