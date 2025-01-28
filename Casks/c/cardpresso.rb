cask "cardpresso" do
  version "1.7.115"
  sha256 "4d8808cb1beffc5e4c2944976d7a5b4e7b2ab1cf46995bc2fca5cecc88e402b7"

  url "https://www.cardpresso.com/downloads/cardpresso_releases/for_mac_osx/cardPresso#{version}.dmg"
  name "cardpresso"
  desc "Card software tool for professional card production"
  homepage "https://www.cardpresso.com/"

  livecheck do
    url "https://www.cardpresso.com/cardpresso-software/latest-release/"
    regex(/href=.*?cardPresso[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "cardPresso.app"

  zap trash: [
    "~/Documents/cardPresso",
    "~/Library/Application Support/cardpresso",
    "~/Library/Preferences/com.cardpresso.cardPresso.plist",
    "~/Library/Saved Application State/com.cardpresso.cardPresso.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
