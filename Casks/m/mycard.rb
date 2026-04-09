cask "mycard" do
  version "3.0.80"
  sha256 "feb464641af147d47e864629927c60826308c676fbf8b022cbbac89183243ff7"

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

  caveats do
    requires_rosetta
  end
end
