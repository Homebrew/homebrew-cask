cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "3b9273f56839282d76e230fd6751d38299b073c6ddea57773afc710a7943acb8",
         intel: "d73912c32dab4329346ed0dca057be3ed641a85cb20c2c99e0617e8e0975a6aa"

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
