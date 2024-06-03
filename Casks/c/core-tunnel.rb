cask "core-tunnel" do
  version "3.8.9"
  sha256 "c4da5d7f2bf9d025940c16d0355cfb7a1bd9bbf7c6114bd7123323ed04898e35"

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
