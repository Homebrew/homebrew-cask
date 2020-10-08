cask "badlion-client" do
  version "2.17.0"
  sha256 "1f425be1fadd50959e19d14499c69bc6ca7c02c61c9fbca8a199cafcd363bb05"

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
