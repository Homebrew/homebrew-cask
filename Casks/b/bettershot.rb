cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.1"
  sha256 arm:   "802c91394ab5eb95a7f4c4c46b7c3a631531acf2b57f4e57a61c0e5630606ea4",
         intel: "4cedd43801d5862482aaaa26f47696f91dd53711ce0013aa6938b2cc8540d1a3"

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
