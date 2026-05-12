cask "fontbase" do
  version "2026.5.0"
  sha256 "3eb100697149db95bf87ecc24a8820ebf10420367700dad9091be6c6842e6a8c"

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  name "FontBase"
  desc "Font manager"
  homepage "https://fontba.se/"

  livecheck do
    url "https://releases.fontba.se/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "FontBase.app"

  zap trash: [
    "~/Library/Application Support/FontBase",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.plist",
    "~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState",
  ]
end
