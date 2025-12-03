cask "fontbase" do
  version "2.24.0"
  sha256 "6fc05dc4a851c837a1c8768d359d08547db01d5655844755947ebac57a642b92"

  url "https://releases.fontba.se/mac/FontBase-#{version}.dmg"
  name "FontBase"
  desc "Font manager"
  homepage "https://fontba.se/"

  livecheck do
    url "https://releases.fontba.se/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "FontBase.app"

  zap trash: [
    "~/Library/Application Support/FontBase",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.helper.plist",
    "~/Library/Preferences/com.dominiklevitsky.fontbase.plist",
    "~/Library/Saved Application State/com.dominiklevitsky.fontbase.savedState",
  ]
end
