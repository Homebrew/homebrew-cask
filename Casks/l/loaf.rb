cask "loaf" do
  version "2.0.2"
  sha256 "847825516079093d3c0cf3ee88ede88b5584e9f0f674d83b878947cfa00d2e97"

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
end
