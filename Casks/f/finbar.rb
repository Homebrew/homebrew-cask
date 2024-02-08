cask "finbar" do
  version "1.12.3"
  sha256 "558139eb1a6685a01f1edbde0ef0af263f118b5a9f97a23a218359ab4c9cb0c7"

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
