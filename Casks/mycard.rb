cask "mycard" do
  version "3.0.67"
  sha256 "871eb016dbd6e8b6b6e9d4b6a74218f54f6acc344f5ceee60f9a344df6d9de08"

  url "https://cdn02.moecube.com:444/downloads/MyCard-#{version}.dmg",
      verified: "cdn02.moecube.com:444/downloads/"
  name "MyCard"
  desc "Yu-Gi-Oh! Complete Card Simulator"
  homepage "https://mycard.moe/"

  livecheck do
    url "https://cdn02.moecube.com:444/downloads/latest-mac.yml"
    strategy :electron_builder
  end

  app "MyCard.app"

  zap trash: [
    "~/Library/Application Support/mycard",
    "~/Library/Application Support/MyCardLibrary",
    "~/Library/Preferences/com.mycard.mycard.plist",
    "~/Library/Logs/MyCard",
    "~/Library/Saved Application State/com.mycard.mycard.savedState",
  ]
end
