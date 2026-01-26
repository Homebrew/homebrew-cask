cask "clone-hero" do
  version "1.0.0.4080"
  sha256 "ea0cb7d9ac5e55cbbe736ed30b49e9faeb642ce96f8b4b6383aba05387ea9f12"

  url "https://github.com/clonehero-game/releases/releases/download/V#{version}/CloneHero-mac.dmg",
      verified: "github.com/clonehero-game/"
  name "Clone Hero"
  desc "Guitar Hero clone"
  homepage "https://clonehero.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clone Hero.app"

  zap trash: [
    "~/Library/Application Support/com.srylain.CloneHero",
    "~/Library/Logs/srylain Inc_",
    "~/Library/Preferences/com.srylain.CloneHero.plist",
    "~/Library/Saved Application State/com.srylain.CloneHero.savedState",
  ]
end
