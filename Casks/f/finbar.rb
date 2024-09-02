cask "finbar" do
  version "1.13.5"
  sha256 "bd5b0b4d7caacc218fecc1375f3db97334bc5d9e5137d999248fddc4066c5974"

  url "https://f002.backblazeb2.com/file/roeybiran/finbar/Finbar%20#{version}.dmg",
      verified: "f002.backblazeb2.com/file/roeybiran/finbar/"
  name "Finbar"
  desc "Menu bar searching utility"
  homepage "https://www.roeybiran.com/apps/finbar"

  livecheck do
    url "https://www.roeybiran.com/apps/finbar/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Finbar.app"

  uninstall quit: "com.roeybiran.Finbar"

  zap trash: [
    "~/Library/Application Support/com.roeybiran.Finbar",
    "~/Library/Preferences/com.roeybiran.Finbar.plist",
  ]
end
