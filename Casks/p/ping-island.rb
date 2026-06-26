cask "ping-island" do
  version "0.23.0"
  sha256 "ddb9ed0af697d9b4942e9b652fa3b9c29d8b03e4f95741ef119c1d31f980851c"

  url "https://github.com/erha19/ping-island/releases/download/v#{version}/PingIsland-#{version}.dmg",
      verified: "github.com/erha19/ping-island/"
  name "Ping Island"
  desc "Menu bar status for coding agent sessions"
  homepage "https://erha19.github.io/ping-island/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Ping Island.app"

  zap trash: [
    "~/Library/Application Support/PingIsland",
    "~/Library/Caches/com.wudanwu.PingIsland",
    "~/Library/HTTPStorages/com.wudanwu.PingIsland",
    "~/Library/Preferences/com.wudanwu.PingIsland.plist",
  ]
end
