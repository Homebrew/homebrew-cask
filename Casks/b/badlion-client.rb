cask "badlion-client" do
  arch arm: "-arm64"

  version "4.5.3"
  sha256 arm:   "221fa6bd5829a3f8579be700057e0a2252880d4c38524f57964ab7e854fb0b33",
         intel: "8612e47c88b4031412495cf4e8a0f93ff9364187f9a6de67b398f137f08719ff"

  url "https://client-updates.badlion.net/Badlion%20Client-#{version}#{arch}.dmg"
  name "Badlion Client"
  desc "Minecraft launcher"
  homepage "https://www.badlion.net/"

  livecheck do
    url "https://client-updates.badlion.net/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Badlion Client.app"

  zap trash: [
    "~/Library/Application Support/Badlion Client",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.badlion.client.sfl*",
    "~/Library/Caches/net.badlion.client",
    "~/Library/Caches/net.badlion.client.ShipIt",
    "~/Library/Logs/Badlion Client",
    "~/Library/Preferences/net.badlion.client.plist",
    "~/Library/Saved Application State/net.badlion.client.savedState",
  ]
end
