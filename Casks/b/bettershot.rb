cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.3"
  sha256 arm:   "c4adb4fb54a7f75e12f0bb2eca603fbd4c83f7f29bc9fb5a6f842f571f8fbb16",
         intel: "f1abb9a73525aebe6f386697322ecf3f9c0e9f0616dc66b805ee167b500fece1"

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
