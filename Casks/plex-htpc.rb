cask "plex-htpc" do
  version "1.28.1.3340,2cc1dfd6"
  sha256 "e0a518e515f4d9391d6feb5566a36c68affac1867e0afdfa0776c3ba6f16b71e"

  url "https://downloads.plex.tv/htpc/#{version.csv.first}-#{version.csv.second}/macos/PlexHTPC-#{version.csv.first}-#{version.csv.second}-x86_64.zip"
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
