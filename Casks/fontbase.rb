cask "fontbase" do
  version "2.13.2"
  sha256 "210732e11a335d44f51ac63b0ae53751cd7cba430f40a9138c89f075f6e6ed3e"

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast "https://releases.fontba.se/mac/latest-mac.yml"
  name "FontBase"
  homepage "https://fontba.se/"

  auto_updates true

  app "FontBase.app"

  zap trash: [
    "~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.plist",
    "~/Library/Application Support/FontBase",
    "~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState",
  ]
end
