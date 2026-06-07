cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.7"
  sha256 arm:   "ab68bf51f154e244c1178c8cd4ff38a48a6a9f60156242551374726b6a627ecf",
         intel: "1ee2aef235c260a55e4f5ccdc738f144e81dcf34da7701dcc2d9eaf85dd3dac5"

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
