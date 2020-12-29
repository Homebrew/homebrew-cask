cask "badlion-client" do
  version "3.0.1"
  sha256 "51c9e1275b7831b891faf886d7936d49cb7aed9ae9ea2f83a2f220dc0847cd76"

  url "https://client-updates.badlion.net/Badlion%20Client-#{version}.dmg"
  appcast "https://client-updates.badlion.net/latest-mac.yml"
  name "Badlion Client"
  homepage "https://www.badlion.net/"

  app "Badlion Client.app"

  zap trash: [
    "~/Library/Caches/net.badlion.client",
    "~/Library/Caches/net.badlion.client.ShipIt",
    "~/Library/Application Support/Badlion Client",
  ]
end
