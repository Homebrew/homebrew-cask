cask "finbar" do
  version "1.14"
  sha256 "aac7280cac0ae0014094567c00eed9918b441c4ddde9e1372bb876bcdf6f177c"

  url "https://roeybiran.com/apps/finbar/Finbar%20#{version}.dmg"
  name "Finbar"
  desc "Menu bar searching utility"
  homepage "https://roeybiran.com/apps/finbar/"

  livecheck do
    url "https://roeybiran.com/apps/finbar/appcast.xml"
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
