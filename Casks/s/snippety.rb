cask "snippety" do
  version "11.3.147"
  sha256 "077092a8cd6f68c06fbe92d8e8774847c3aba4f9f7de8c6164c03d801fbc800f"

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
