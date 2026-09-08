cask "snippety" do
  version "11.4.149"
  sha256 "1edf0fde902c6acfe9d74dbf2a10480a4df94a0a0f8b06ae3a5b28384f0394fb"

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
