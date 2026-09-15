cask "core-tunnel" do
  version "5.1,4849"
  sha256 "501c4096373bf3cebc7f1157af50eef6070e70d6a16bd825930d14cf56fdb728"

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
