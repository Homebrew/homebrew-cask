cask "mycard" do
  version "3.0.87"
  sha256 "ed302498dd66e3f0d42e428991ed1f93f953f3a7b295c568eab116a0d83a2634"

  url "https://cdn02.moecube.com:444/downloads/MyCard-#{version}.dmg"
  name "MyCard"
  desc "Yu-Gi-Oh! Complete Card Simulator"
  homepage "https://mycard.moe/"

  livecheck do
    url "https://cdn02.moecube.com:444/downloads/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "MyCard.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mycard.mycard.sfl*",
    "~/Library/Application Support/mycard",
    "~/Library/Application Support/MyCardLibrary",
    "~/Library/Logs/MyCard",
    "~/Library/Preferences/com.mycard.mycard.plist",
    "~/Library/Saved Application State/com.mycard.mycard.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
