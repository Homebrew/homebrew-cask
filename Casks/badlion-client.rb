cask "badlion-client" do
  version "2.15.2"
  sha256 "031bdc76903cdd418c5f47f2a506377b066905487ce19581daea5698fda1378b"

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
