cask "fontbase" do
  version "2.24.6"
  sha256 "fa1d4c440da03de478e4cfb47c23967d2258bcb9779ced65c17e84ab78c98285"

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
