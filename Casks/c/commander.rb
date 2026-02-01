cask "commander" do
  version "0.5.456"
  sha256 "b9ab081489d48fd5a01a5f6d6837c445ed58d729347ecdc3fa1349a7ed6048f8"

  url "https://download.commanderai.app/release/Commander-#{version}.zip"

  name "Commander"
  desc "AI agent operator"
  homepage "https://commanderai.app/"

  livecheck do
    url "https://softwareupdate.commanderai.app/appcast/commanderai-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Commander.app"

  zap trash: [
    "~/Library/Application Support/Commander",
    "~/Library/Caches/Commander",
    "~/Library/Commander",
    "~/Library/Preferences/com.krzyzanowskim.Commander.plist"
  ]
end
