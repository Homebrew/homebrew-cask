cask "core-tunnel" do
  version "4.1,4730"
  sha256 "7bdee555a1bf95fa437fd1ad62577251770d05d42497d34b6a4ffc326d7e9ec4"

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
