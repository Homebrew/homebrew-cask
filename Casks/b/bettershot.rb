cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.4"
  sha256 arm:   "8a8dcf47a437d36320e19e08d0498d45c14bb633a0c6f1c5fdf58bcdc8f52ce1",
         intel: "8ad1cb4823b1c98504b999d3ae80ff14a24af242ccd8b895aa3ef0011c2e903c"

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
