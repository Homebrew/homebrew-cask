cask "snippety" do
  version "11.3.148"
  sha256 "765cc8e3c7d32c4099d63a331e987920d40297f3a24ab9553e0ef4546e92585e"

  url "https://snippety.app/releases/Snippety-#{version}.dmg"
  name "Snippety"
  desc "Snippet manager & text expander"
  homepage "https://snippety.app/"

  livecheck do
    url "https://snippety.app/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Snippety.app"

  zap trash: [
    "~/Library/Application Support/pl.wojciechkulik.Snippety*",
    "~/Library/Application Support/Snippety",
    "~/Library/Caches/pl.wojciechkulik.Snippety",
    "~/Library/Caches/pl.wojciechkulik.Snippety.revenuecat",
    "~/Library/HTTPStorages/pl.wojciechkulik.Snippety",
    "~/Library/Logs/pl.wojciechkulik.Snippety.migration-logs-*",
    "~/Library/Logs/snippety.txt",
    "~/Library/Preferences/group.pl.wojciechkulik.Snippety.firebase.plist",
    "~/Library/Preferences/pl.wojciechkulik.Snippety.plist",
  ]
end
