cask "decloner" do
  version "1.6.3"
  sha256 "72123bcbbe734da007fea5becbb06236876cd1cf40ae4d6c8ea43f890c8eef8d"

  url "https://www.pixelespressoapps.com/decloner/Decloner_#{version}.zip"
  name "Decloner"
  desc "Duplicate files finder"
  homepage "https://www.pixelespressoapps.com/decloner/"

  livecheck do
    url "https://www.pixelespressoapps.com/decloner/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Decloner.app"

  zap trash: [
    "~/Library/Application Support/com.pixelespresso.Decloner",
    "~/Library/Application Support/Decloner",
    "~/Library/Caches/com.pixelespresso.Decloner",
    "~/Library/Preferences/com.pixelespresso.Decloner.plist",
    "~/Library/Saved Application State/com.pixelespresso.Decloner.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
