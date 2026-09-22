cask "bettershot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.6"
  sha256 arm:   "f5a7b40cfc2f2d4610b10c3b447685207ed72ea970a323374f8ae245617e58bf",
         intel: "2ad5e2b0876eb54ec775cbeefaa8ad2bfe4f271bb8abd2b26fa0d1f2c5fbc32e"

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
