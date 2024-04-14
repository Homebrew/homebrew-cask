cask "mycard" do
  version "3.0.69"
  sha256 "fd2f167c5d4a22092d551c75b774693e1092e684db4c19006143947fb83f177b"

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
    "~/Library/Logs/MyCard",
    "~/Library/Preferences/com.mycard.mycard.plist",
    "~/Library/Saved Application State/com.mycard.mycard.savedState",
  ]
end
