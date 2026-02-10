cask "stremioservice" do
  version "0.1.15"
  sha256 "e5a79c36e17d6081aec0879e98de77ada0dd4576ed9e9645f748106f9ee0275f"

  url "https://github.com/Stremio/stremio-service/releases/download/v#{version}/StremioService.dmg",
      verified: "github.com/Stremio/stremio-service/"
  name "Stremio Service"
  desc "Companion app for Stremio Web"
  homepage "https://web.strem.io/"

  livecheck do
    url "https://www.stremio.com/updater/check?product=stremio-service"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "StremioService.app"

  uninstall launchctl: "com.stremio.service"

  zap trash: [
    "~/Library/Application Support/stremio-server",
    "~/Library/LaunchAgents/com.stremio.service.plist",
  ]
end
