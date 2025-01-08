cask "plex" do
  version "1.106.0.276,fe8d1d20"
  sha256 "7c6e1a82d7729ec220bc34eb4cd22ef88f47584afa04a074009f9cea63331ee2"

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
