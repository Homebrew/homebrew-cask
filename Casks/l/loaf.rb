cask "loaf" do
  version "2.0.5"
  sha256 "c245c4bc75c1c0052fec88d84b5a90fc11f9ed1ca28eec673d9b06681d702626"

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
