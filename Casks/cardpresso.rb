cask "cardpresso" do
  version "1.7.15"
  sha256 "81af149a979c794fb580023ad6fe3a689f7ea89af6c4d841912af2c118fe4aee"

  url "https://www.cardpresso.com/downloads/cardpresso_releases/for_mac_osx/cardPresso#{version}.dmg"
  name "cardpresso"
  desc "Card software tool for professional card production."
  homepage "https://www.cardpresso.com/"

  livecheck do
    skip "No version information available"
  end

  app "cardPresso.app"

  zap trash: [
    "~/Documents/cardPresso",
    "~/Library/Application Support/cardpresso",
    "~/Library/Preferences/com.cardpresso.cardPresso.plist",
    "~/Library/Saved Application State/com.cardpresso.cardPresso.savedState",
  ]
end
