cask "islide" do
  version "1.2.0"
  sha256 "c91552583cb784c1a0e7d6e2db132c54e0b7065be54a93aad828470844c99e19"

  url "https://static.islide.cc/site/product/package/dmg/iSlide-#{version}.dmg"
  name "iSlide"
  desc "PPT-based plug-in tool"
  homepage "https://www.islide.cc/"

  livecheck do
    url "https://static.islide.cc/site/product/package/dmg/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "iSlide.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.islide.islidetools.sfl*",
    "~/Library/Application Support/iSlide Tools",
    "~/Library/Caches/com.islide.islidetools.ShipIt",
    "~/Library/Caches/islidetools-updater",
    "~/Library/Logs/iSlide Tools",
    "~/Library/Logs/iSlide",
    "~/Library/Preferences/com.islide.islidetools.plist",
    "~/Library/Saved Application State/com.islide.islidetools.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
