cask "plex" do
  version "1.19.0.1399-31d8c803"
  sha256 "0f28a88e1a2cad75c12a4dd7abdccefe91cda4a5f4e11a840ce326d673e4cda2"

  url "https://downloads.plex.tv/plex-desktop/#{version}/macos/Plex-#{version}-x86_64.zip"
  appcast "https://plex.tv/api/downloads/6.json"
  name "Plex"
  desc "Home media server"
  homepage "https://www.plex.tv/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Plex.app"

  zap trash: [
    "~/Library/Application Support/Plex",
    "~/Library/Caches/Plex",
    "~/Library/Logs/Plex",
  ]
end
