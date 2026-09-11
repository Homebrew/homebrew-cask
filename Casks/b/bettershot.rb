cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.2"
  sha256 arm:   "0adfb3fd36ed888208a430caa865608aaeb8c293db5933f6a4df88d596543431",
         intel: "38b057b5af70a8430473c40a648753d0eaf9f7fb0651b292e6595a9287f8e340"

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
