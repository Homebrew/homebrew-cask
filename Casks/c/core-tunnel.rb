cask "core-tunnel" do
  version "3.10.3"
  sha256 "e47ab9dd80b8b531bb120aba544226dd36e3b888e41b6eeb9c8346e0cf07bdef"

  url "https://codinn.com/update/tunnel/Core%20Tunnel-#{version}.zip"
  name "Core Tunnel"
  desc "SSH tunnel manager"
  homepage "https://codinn.com/tunnel/"

  livecheck do
    url "https://codinn.com/update/tunnel/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
