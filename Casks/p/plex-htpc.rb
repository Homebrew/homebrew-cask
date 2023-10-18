cask "plex-htpc" do
  version "1.49.0.3994,0d97189b"
  sha256 "affbe5d2b8617d8a9761a8294b419fd78a504f9580e573d3997eb0826fbbb837"

  url "https://downloads.plex.tv/htpc/#{version.csv.first}-#{version.csv.second}/macos/PlexHTPC-#{version.csv.first}-#{version.csv.second}-universal.zip"
  name "Plex HTPC"
  desc "Home Theater PC media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/7.json"
    regex(/"version"\s*:\s*"(\d(?:\.\d+)*)-([a-f0-9]{8})"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Plex HTPC.app"

  zap trash: [
    "~/Library/Application Support/Plex HTPC",
    "~/Library/Caches/Plex HTPC",
    "~/Library/Logs/Plex HTPC",
  ]
end
