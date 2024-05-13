cask "badlion-client" do
  arch arm: "-arm64"

  version "4.3.0"
  sha256 arm:   "c7e1447b4cd98210f06d40bc6697903b1b3e497c88fc43fa5f189f1060392334",
         intel: "66a7ac7c83e6ffe3040a3ca0be9d2d1ba13ca7abbd2700c66e2fbcff719a04b0"

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
