cask "plex-htpc" do
  version "1.71.1.346,f62ce923"
  sha256 "98d7fe76c010945f261ae5ad0f83253973aad834d743fe9d6135f7ae6db165da"

  url "https://downloads.plex.tv/htpc/#{version.csv.first}-#{version.csv.second}/macos/PlexHTPC-#{version.csv.first}-#{version.csv.second}-universal.zip"
  name "Plex HTPC"
  desc "Home Theater PC media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/7.json"
    strategy :json do |json|
      json.dig("computer", "MacOS", "version")&.tr("-", ",")
    end
  end

  auto_updates true

  app "Plex HTPC.app"

  zap trash: [
    "~/Library/Application Support/Plex HTPC",
    "~/Library/Caches/Plex HTPC",
    "~/Library/Logs/Plex HTPC",
  ]
end
