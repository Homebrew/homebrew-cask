cask "mycard" do
  version "3.0.75"
  sha256 "1d0984f4d59456cd8cee0f59c5fe04fbb7c83ced430046246d90300ffb04cef1"

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
