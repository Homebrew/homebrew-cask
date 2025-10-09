cask "cardpresso" do
  version "1.7.130"
  sha256 "8e0a0cd0bca0125edcc857c583673001fbd5b958be921015382be2d6d567e3b2"

  url "https://www.cardpresso.com/downloads/cardpresso_releases/for_mac_osx/cardPresso#{version}.dmg"
  name "cardPresso"
  desc "Card software tool for professional card production"
  homepage "https://www.cardpresso.com/"

  livecheck do
    url "https://www.cardpresso.com/cardpresso-software/latest-release/"
    regex(/href=.*?cardPresso[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

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
