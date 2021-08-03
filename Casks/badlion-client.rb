cask "badlion-client" do
  version "3.3.0"
  sha256 "94dee9b432ef5324c93728917f42a2a7e0bf64c9f91e35e75b546a6aa942f178"

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
    "~/Library/Caches/net.badlion.client",
    "~/Library/Caches/net.badlion.client.ShipIt",
    "~/Library/Application Support/Badlion Client",
  ]
end
