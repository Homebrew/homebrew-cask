cask "plex" do
  version "1.48.2.3124,647ff031"
  sha256 "8829ee729853d32f9cd17736e3767b77b904441a59e2d28dac58284e0dc82551"

  url "https://downloads.plex.tv/plex-desktop/#{version.csv.first}-#{version.csv.second}/macos/Plex-#{version.csv.first}-#{version.csv.second}-x86_64.zip"
  name "Plex"
  desc "Home media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/6.json"
    regex(/"version"\s*:\s*"(\d(?:\.\d+)*)-([a-f0-9]{8})"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Plex.app"

  zap trash: [
    "~/Library/Application Support/Plex",
    "~/Library/Caches/Plex",
    "~/Library/Logs/Plex",
  ]
end
