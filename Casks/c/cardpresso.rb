cask "cardpresso" do
  version "1.7.65"
  sha256 "606fa4a9025185a054e10e75f38d40f7d330f92d30f98ebad36701d730362fd8"

  url "https://www.cardpresso.com/downloads/cardpresso_releases/for_mac_osx/cardPresso#{version}.dmg"
  name "cardpresso"
  desc "Card software tool for professional card production"
  homepage "https://www.cardpresso.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :high_sierra"

  app "cardPresso.app"

  zap trash: [
    "~/Documents/cardPresso",
    "~/Library/Application Support/cardpresso",
    "~/Library/Preferences/com.cardpresso.cardPresso.plist",
    "~/Library/Saved Application State/com.cardpresso.cardPresso.savedState",
  ]
end
