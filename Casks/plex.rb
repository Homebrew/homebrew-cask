cask "plex" do
  version "1.42.1.2926,415b0e14"
  sha256 "5092fee02e89308f4129fba85efe528a4761004362406b4357646e6c4c07d483"

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
