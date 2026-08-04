cask "snippety" do
  version "11.2.146"
  sha256 "27d948640b14f8335a18a7a024994e44be4f09c41eb0b16ed64a5c950dccf047"

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
