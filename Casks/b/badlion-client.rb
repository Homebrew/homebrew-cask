cask "badlion-client" do
  arch arm: "-arm64"

  version "4.5.2"
  sha256 arm:   "1cd3faca75e19e445a34b83cd52a716f2f8db190f50f7ad2b47877d0cbfb65f8",
         intel: "5a44d64223235b16398ec3e3e326288fea8be37aa4586074cbb6de2441b0b86e"

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
