cask "clone-hero" do
  version "1.0.0.4080"
  sha256 "7b7d170b344773ce8355a0c3274e4adc1715e7cd978e210d3c701af22df00d5c"

  url "https://github.com/clonehero-game/releases/releases/download/V#{version}/CloneHero-mac.dmg",
      verified: "github.com/clonehero-game/"
  name "Clone Hero"
  desc "Guitar Hero clone"
  homepage "https://clonehero.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Clone Hero.app"

  zap trash: [
    "~/Library/Application Support/com.srylain.CloneHero",
    "~/Library/Logs/srylain Inc_",
    "~/Library/Preferences/com.srylain.CloneHero.plist",
    "~/Library/Saved Application State/com.srylain.CloneHero.savedState",
  ]
end
