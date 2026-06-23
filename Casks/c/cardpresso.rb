cask "cardpresso" do
  version "1.7.140"
  sha256 "5e8ca104db9a16aa8ae446d9e882b74e9feaf07ff29da5418e526ec46e9045d1"

  url "https://www.cardpresso.com/downloads/cardpresso_releases/for_mac_osx/cardPresso#{version}.dmg"
  name "cardPresso"
  desc "Card software tool for professional card production"
  homepage "https://www.cardpresso.com/"

  livecheck do
    url "https://www.cardpresso.com/cardpresso-software/latest-release/"
    regex(/href=.*?cardPresso[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
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
