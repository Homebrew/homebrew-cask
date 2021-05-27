cask "fontbase" do
  version "2.15.6"
  sha256 "1cc062b116843dfa50130008c57124a42ea6ac97c8d0349e177045223afd4c1c"

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
