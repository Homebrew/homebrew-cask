cask "finbar" do
  version "1.13.4"
  sha256 "852fbf49c3408dfcbf601b8ef354b7066b7a67ff5ba0f32119054912335c0222"

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
