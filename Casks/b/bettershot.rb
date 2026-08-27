cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.2"
  sha256 arm:   "7c12b12f09b66ee31308649d1c06893821c8f8de61a50a6893db2fd3664f2702",
         intel: "308285851723367ad38170aee3bf3a28970045d77322c5aba1c7cfbdea9fe7f4"

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
