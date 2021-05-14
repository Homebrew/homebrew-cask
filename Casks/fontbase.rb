cask "fontbase" do
  version "2.15.3"
  sha256 "f235c739b1f1d10cc8e40f0786aaeacd6b361df97124d5705a2c722883fcd836"

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  name "FontBase"
  desc "Font manager"
  homepage "https://fontba.se/"

  livecheck do
    url "https://releases.fontba.se/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "FontBase.app"

  zap trash: [
    "~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.plist",
    "~/Library/Application Support/FontBase",
    "~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState",
  ]
end
