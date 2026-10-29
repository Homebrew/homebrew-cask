cask "server-box" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1844"
  sha256 arm:   "02ebd56315be6502e6611500fcbc8c840e8ad09eb2b8f0eb5983410ef59b3e88",
         intel: "9aca16d920cadd0098830c233ccbe38772b2ae87542648fab10e31cdc0ee69e3"

  url "https://github.com/lollipopkit/flutter_server_box/releases/download/v#{version}/ServerBox-#{version}-#{arch}.dmg"
  name "ServerBox"
  desc "App for monitoring server status with SSH terminal, SFTP, Container management"
  homepage "https://github.com/lollipopkit/flutter_server_box"

  depends_on macos: :ventura

  app "Server Box.app"

  zap trash: [
    "~/Library/Application Support/com.lollipopkit.toolbox",
    "~/Library/Application Support/ServerBox",
    "~/Library/Caches/com.lollipopkit.toolbox",
    "~/Library/Preferences/com.lollipopkit.toolbox.plist",
  ]
end
