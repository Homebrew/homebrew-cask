cask "fontbase" do
  version "2.25.10"
  sha256 "b8a2d2352a15ac193a4b1cb008c5ba6c56e19f70662d1c7b60d92dfa1c9fab9d"

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  name "FontBase"
  desc "Font manager"
  homepage "https://fontba.se/"

  livecheck do
    url "https://releases.fontba.se/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "FontBase.app"

  zap trash: [
    "~/Library/Application Support/FontBase",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.plist",
    "~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState",
  ]
end
