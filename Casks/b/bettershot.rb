cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.3"
  sha256 arm:   "a20dc24687a6c976631acfded3c092e4735ec557b67a889e13d9e9f910029852",
         intel: "de3d4e01af5a991077275988eb301a04797a88136664147179b3ada77ef434d1"

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
