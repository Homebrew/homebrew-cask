cask "loaf" do
  version "1.1.18"
  sha256 "3caa44f6c262a1e8f21e07b243d6f9f22268eac833764c558df5a01bb201ac3b"

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
