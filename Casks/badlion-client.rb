cask "badlion-client" do
  version "3.5.5"
  sha256 "6430edf6c46e56f0073e07cbc4fbf07a8d21ec3b99f5f43000c43b919ad716c7"

  url "https://client-updates.badlion.net/Badlion%20Client-#{version}.dmg"
  name "Badlion Client"
  desc "Minecraft launcher"
  homepage "https://www.badlion.net/"

  livecheck do
    url "https://client-updates.badlion.net/latest-mac.yml"
    strategy :electron_builder
  end

  app "Badlion Client.app"

  zap trash: [
    "~/Library/Application Support/Badlion Client",
    "~/Library/Caches/net.badlion.client",
    "~/Library/Caches/net.badlion.client.ShipIt",
  ]
end
