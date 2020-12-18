cask "fontbase" do
  version "2.14.0"
  sha256 "e30bc7e60205ab74713aac0908286a50219e5f6a0599c3300b634a01e36bc67d"

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  appcast "https://releases.fontba.se/mac/latest-mac.yml"
  name "FontBase"
  desc "Font manager"
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
