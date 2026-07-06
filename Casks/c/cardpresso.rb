cask "cardpresso" do
  version "1.7.140"
  sha256 "fccb6c5de6de364136b49d84bbac9e337ab220a7e53846304cb85e6e81dcfc4c"

  url "https://www.cardpressodownloads.com/downloads/cardpresso_releases/for_mac_osx/cardPresso#{version}.zip",
      verified: "cardpressodownloads.com/downloads/cardpresso_releases/for_mac_osx/"
  name "cardPresso"
  desc "Card software tool for professional card production"
  homepage "https://www.cardpresso.com/"

  livecheck do
    url "https://www.cardpresso.com/cardpresso-software/latest-release/"
    regex(/href=.*?cardPresso[._-]?v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on :macos

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
