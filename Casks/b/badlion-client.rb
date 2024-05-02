cask "badlion-client" do
  arch arm: "-arm64"

  version "4.2.0"
  sha256 arm:   "0224e12ac2cdf491334ea492ca5f2163441dcd02c301e213714cf590b1c56209",
         intel: "e68263ae153ff1463e7f2b1a6fa2d92cc48cbef9d84abb7699249687201458df"

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
