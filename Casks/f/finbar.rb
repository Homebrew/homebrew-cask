cask "finbar" do
  version "1.14.2"
  sha256 "d9adabd2b0709ea7b53b71a5ae41373e6baf0be0c8a5e8600e3c2ede5305d2a9"

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
