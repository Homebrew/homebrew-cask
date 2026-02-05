cask "commander" do
  version "0.5.505"
  sha256 "ebb7cc13d93de4e7cd8bca89518c6e37997a66a7cf44876a1f3e17494b1606f3"

  url "https://download.commanderai.app/release/Commander-#{version}.zip"
  name "Commander"
  desc "AI agent operator"
  homepage "https://commanderai.app/"

  livecheck do
    url "https://softwareupdate.commanderai.app/appcast/commanderai-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Commander.app"

  zap trash: [
    "~/Library/Application Support/Commander",
    "~/Library/Caches/Commander",
    "~/Library/Commander",
    "~/Library/Preferences/com.krzyzanowskim.Commander.plist",
  ]
end
