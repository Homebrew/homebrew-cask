cask "badlion-client" do
  version "4.0.0"
  sha256 "0d9bee2d1b7d458bf902209a5d157eb48b4e3a1c087af56a7a4956aadce52ab4"

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
