cask "mycard" do
  version "3.0.86"
  sha256 "4f2dc161d0b6bfc890d58570e935243b90b1110f623418d4057985e8c0f06a0d"

  url "https://cdn02.moecube.com:444/downloads/MyCard-#{version}.dmg",
      verified: "cdn02.moecube.com:444/downloads/"
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
