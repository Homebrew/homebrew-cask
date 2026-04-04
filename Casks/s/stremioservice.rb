cask "stremioservice" do
  version "0.1.21"
  sha256 "600a6273f77319f444b6dc691d8aa44e4c009c249a50809bde8ff4248101c935"

  url "https://github.com/Stremio/stremio-service/releases/download/v#{version}/StremioService.dmg",
      verified: "github.com/Stremio/stremio-service/"
  name "Stremio Service"
  desc "Companion app for Stremio Web"
  homepage "https://web.strem.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "StremioService.app"

  uninstall launchctl: "com.stremio.service"

  zap trash: [
    "~/Library/Application Support/stremio-server",
    "~/Library/LaunchAgents/com.stremio.service.plist",
  ]

  caveats do
    requires_rosetta
  end
end
