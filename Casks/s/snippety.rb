cask "snippety" do
  version "11.6.155"
  sha256 "255980be63523d71ec4f3fd5ae5d985efeac93abc12ed79bd75e86281e2cde41"

  url "https://snippety.app/releases/Snippety-#{version}.dmg"
  name "Snippety"
  desc "Snippet manager & text expander"
  homepage "https://snippety.app/"

  livecheck do
    url "https://snippety.app/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

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
