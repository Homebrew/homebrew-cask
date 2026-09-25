cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.7"
  sha256 arm:   "53f917810d8dd57afdd7f39ad8b7827064f6e0c01a58976e2e3810e80cfe0bff",
         intel: "31a9795c39b9c242cd6da321231d1c4501b460cb3f5a89dd78efaa43a8a3fa2d"

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
