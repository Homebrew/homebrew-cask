cask "loaf" do
  version "2.0.9"
  sha256 "e01953ba3fa4f84daf3a5b0ca0cfe730958f2f1d4a674bbaf7eab31bcfd0012e"

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
