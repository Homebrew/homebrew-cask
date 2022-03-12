cask "badlion-client" do
  version "3.6.4"
  sha256 "5df3ebf0d99e944c8a54ccc904984a3d3d071930fd1410b7af623341e39b6782"

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
