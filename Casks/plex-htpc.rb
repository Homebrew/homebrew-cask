cask "plex-htpc" do
  version "1.39.2.3822,a0cc3c3e"
  sha256 "dbd4e052b1b3b4144e5b38979620c835731c2e33d231f8adfc900688c44738ec"

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
