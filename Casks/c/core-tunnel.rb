cask "core-tunnel" do
  version "5.2,4951"
  sha256 "e6528b8db8e9294de720b7e0144305e6c8566e869199c35e413910aff9c2cfb8"

  url "https://codinn.com/update/tunnel/Core%20Tunnel-#{version.csv.first}%20(#{version.csv.second}).zip"
  name "Core Tunnel"
  desc "SSH tunnel manager"
  homepage "https://codinn.com/tunnel/"

  livecheck do
    url "https://codinn.com/update/tunnel/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Core Tunnel.app"

  zap trash: [
    "~/Library/Application Scripts/E78WKS7W4U.io.coressh",
    "~/Library/Application Scripts/E78WKS7W4U.io.coressh.ssh",
    "~/Library/Application Scripts/io.coressh.tunnel-direct",
    "~/Library/Containers/io.coressh.tunnel-direct",
    "~/Library/Group Containers/E78WKS7W4U.io.coressh",
    "~/Library/Group Containers/E78WKS7W4U.io.coressh.ssh",
  ]
end
