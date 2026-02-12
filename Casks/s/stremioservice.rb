cask "stremioservice" do
  version "0.1.17"
  sha256 "e74fe7a085e7462abfefcd050e09ac053342ce37a062f9878f24f0d459b60414"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "StremioService.app"

  uninstall launchctl: "com.stremio.service"

  zap trash: [
    "~/Library/Application Support/stremio-server",
    "~/Library/LaunchAgents/com.stremio.service.plist",
  ]
end
