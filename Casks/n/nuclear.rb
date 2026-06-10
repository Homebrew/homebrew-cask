cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.0"
  sha256 arm:   "adb4ac1d83139ab1f263f29e3176a9c50b08118cc4fecb243b7f22393f140561",
         intel: "8f0d2d4aa47fca6e4dd61b981d34c5a9642db0bfd4a79a7dc20940a2cafc3245"

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
