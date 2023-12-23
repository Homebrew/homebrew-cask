cask "finbar" do
  version "1.12.1"
  sha256 "874e5326abe7f6f17b3a8d222726ffd7f54aa6e7ea6f2f822a099ade1dfa4990"

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
