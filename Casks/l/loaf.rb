cask "loaf" do
  version "2.0.3"
  sha256 "778eb0405960fb5a28cb7f5d2109a139c00124b2386adc3ee878681f4c68f4e2"

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
