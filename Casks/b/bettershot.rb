cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "4703659bb787297142f0656a5bbc2db7d6dabaa57dbe114b63b713eb7de5a7fe",
         intel: "4ca5e0233dcf82c98bf3b81f2a4a7c65928b3d79aa6a868ad45b7e92d51d0d7d"

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
