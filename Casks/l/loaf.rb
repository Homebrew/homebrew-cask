cask "loaf" do
  version "2.0.6"
  sha256 "6203b79113f594c21c97b9c422e2039228ebb1204de4edf3f915581c2d79be09"

  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg",
      verified: "github.com/philipardeljan/getloaf/"
  name "Loaf"
  desc "Animated icon library"
  homepage "https://getloaf.io/"

  app "Loaf.app"

  zap trash: [
    "~/Library/Application Support/Loaf",
    "~/Library/Logs/Loaf",
    "~/Library/Preferences/com.loaf.studio.plist",
    "~/Library/Saved Application State/com.loaf.studio.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
