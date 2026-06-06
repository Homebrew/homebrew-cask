cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.6"
  sha256 arm:   "7792cdaf89142c3d388dea8e28791190ca4b3bd44cc9372f173e899f68788852",
         intel: "0cd2a0e948f7baf2c6f62695e797d3e930c57fab89fd43110fa2f08e99c6c24a"

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
  depends_on macos: :sonoma

  app "bettershot.app"

  zap trash: [
    "~/Library/Application Support/com.kartiklabhshetwar.bettershot",
    "~/Library/Caches/com.kartiklabhshetwar.bettershot",
    "~/Library/Preferences/com.kartiklabhshetwar.bettershot.plist",
    "~/Library/Saved Application State/com.kartiklabhshetwar.bettershot.savedState",
  ]
end
