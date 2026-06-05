cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.39.0"
  sha256 arm:   "196235b05450c5b0f82f4ed3a197c0a4790145fd038f5b974fdeb383592c879a",
         intel: "f757f4f53fe9c4a6e78402b1b43cc1764c45828722be0a6df60a2df71bc44ba9"

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
