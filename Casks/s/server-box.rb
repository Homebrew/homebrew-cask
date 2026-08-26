cask "server-box" do
  version "1.0.1538"
  sha256 "ff913d1365f640963c6a58e4e3d54b32ac19d25cdf252ff6a195ff5d18299dfd"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on macos: :monterey

  app "Server Box.app"

  zap trash: "~/Library/Containers/com.lollipopkit.toolbox"
end
