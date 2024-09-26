cask "badlion-client" do
  arch arm: "-arm64"

  version "4.4.1"
  sha256 arm:   "959879e54d5f09c27761b730aeb6d958215d5b88550cc3430b83d7427c72729d",
         intel: "53b82e218e1403147b9d86fe4a6752eff5ec8de564b8c5684b069a2baeed1bbc"

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
