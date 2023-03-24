cask "plex-htpc" do
  version "1.36.1.3638,68ff8a18"
  sha256 "a48ef1092d39199ec069fde262288cc0f3167fa9e3df3b51901eb4c3492611c4"

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
