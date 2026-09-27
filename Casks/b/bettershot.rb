cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.8"
  sha256 arm:   "6cf2f94a7bb09461ca1d091f6ff7804f5c4d4116abf89fa7bf7be81182be0ac4",
         intel: "eb67643590b80b25819376d125ac0336d6270f0bb0b5b9e3f5c05fe67d867696"

  url "https://github.com/KartikLabhshetwar/better-shot/releases/download/v#{version}/BetterShot-#{version}_#{arch}.dmg"
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
