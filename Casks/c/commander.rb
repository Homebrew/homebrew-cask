cask "commander" do
  version "0.5.489"
  sha256 "c64e8f175f46c64c3253324f792fb5907eec8f9098bb30cb913385ca06a0be65"

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
