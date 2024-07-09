cask "cardpresso" do
  version "1.7.80.3"
  sha256 "aa30d5b1341453bd983843ebf3b022cee20077a758ed307b8d3e3dc0d689c853"

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
