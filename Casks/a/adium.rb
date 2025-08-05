cask "adium" do
  version "1.5.10.4"
  sha256 "31fa3fd32b86dd3381b60e0d5aafbc2a9452036f0fb4963bffbc2a6c64a9458b"

  url "https://adiumx.cachefly.net/Adium_#{version}.dmg",
      verified: "adiumx.cachefly.net/"
  name "Adium"
  desc "Instant messaging application"
  homepage "https://www.adium.im/"

  livecheck do
    url "https://sparkle.adium.im/appcast-release.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Adium.app"

  zap trash: [
    "~/Library/Application Support/Adium 2.0",
    "~/Library/Caches/Adium",
    "~/Library/Caches/com.adiumX.adiumX",
    "~/Library/Caches/com.apple.helpd/Generated/Adium Help*",
    "~/Library/Preferences/com.adiumX.adiumX.plist",
    "~/Library/Saved Application State/com.adiumX.adiumX.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
