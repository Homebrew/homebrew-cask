cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.1"
  sha256 arm:   "faa495c2ee2983d811bb085aad61828985a900e1c93aca0d731d8507985a6f2b",
         intel: "c8bd17e7712f767c5d717828af47ad999bc32bc20641e9f86417f3d557da2b44"

  url "https://github.com/KartikLabhshetwar/better-shot/releases/download/v#{version}/BetterShot-#{version}_#{arch}.dmg",
      verified: "github.com/KartikLabhshetwar/better-shot/"
  name "Better Shot"
  desc "Screen capturing and editing tool"
  homepage "https://bettershot.site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "BetterShot.app"

  zap trash: [
    "~/Library/Application Support/com.kartiklabhshetwar.bettershot",
    "~/Library/Caches/com.kartiklabhshetwar.bettershot",
    "~/Library/Preferences/com.kartiklabhshetwar.bettershot.plist",
    "~/Library/Saved Application State/com.kartiklabhshetwar.bettershot.savedState",
  ]
end
