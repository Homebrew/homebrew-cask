cask "finbar" do
  version "1.17.3"
  sha256 "1caf744db03df28b5325ff14dc86a2ded54843cec6dd8e7ec6209d16f4dd0b96"

  url "https://roeybiran.com/apps/finbar/Finbar%20#{version}.dmg"
  name "Finbar"
  desc "Menu bar searching utility"
  homepage "https://roeybiran.com/apps/finbar/"

  livecheck do
    url "https://roeybiran.com/apps/finbar/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Finbar.app"

  uninstall quit: "com.roeybiran.Finbar"

  zap trash: [
    "~/Library/Application Support/com.roeybiran.Finbar",
    "~/Library/Preferences/com.roeybiran.Finbar.plist",
  ]
end
