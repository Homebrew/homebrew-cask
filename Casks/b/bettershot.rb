cask "bettershot" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "c224c544f29d1dcf3d84f5ac930c54597c085102d5ce6ccbe13977eeff18d0eb",
         intel: "c0c9f324e2df9f40999d810555a448bf1cc01ea99efaea63591ee65710f9b1e1"

  url "https://github.com/KartikLabhshetwar/better-shot/releases/download/v#{version}/bettershot_#{version}_#{arch}.dmg",
      verified: "github.com/KartikLabhshetwar/better-shot/"
  name "Better Shot"
  desc "Screen capturing and editing tool"
  homepage "https://bettershot.site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "bettershot.app"

  zap trash: [
    "~/Library/Application Support/com.kartiklabhshetwar.bettershot",
    "~/Library/Caches/com.kartiklabhshetwar.bettershot",
    "~/Library/Preferences/com.kartiklabhshetwar.bettershot.plist",
    "~/Library/Saved Application State/com.kartiklabhshetwar.bettershot.savedState",
  ]
end
