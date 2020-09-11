cask "badlion-client" do
  version "2.16.1"
  sha256 "213d7323a767ce52c8d78e335d26f0c82ac233418e86c63d6f0e51d7d8a2edf6"

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
