cask "badlion-client" do
  version "3.11.0"
  sha256 "6d3b0bb020a9d72d3df5710c20732e17a091b9b47c3b5d57604dd8f07fc96119"

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
