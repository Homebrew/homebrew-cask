cask "plex" do
  version "1.105.2.269,12a32491"
  sha256 "9ad6831d2822517eb9c1f98acef6104510b27a96489cd2ed80943c9878ca60a7"

  url "https://downloads.plex.tv/plex-desktop/#{version.csv.first}-#{version.csv.second}/macos/Plex-#{version.csv.first}-#{version.csv.second}-universal.zip"
  name "Plex"
  desc "Home media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/6.json"
    strategy :json do |json|
      json.dig("computer", "MacOS", "version")&.tr("-", ",")
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
