cask "fontbase" do
  version "2026.5.23"
  sha256 "a83df8f6babc9243618dce027865590c11f108d236e29a636f1d310cb8c05e8a"

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
