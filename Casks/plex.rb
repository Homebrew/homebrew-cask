cask "plex" do
  version "1.16.0.1364-da192ff7"
  sha256 "c835dd1bc104a65cea74561f1fd4b5f758f2f4a22d36c53e71d9a43680749e87"

  url "https://downloads.plex.tv/plex-desktop/#{version}/macos/Plex-#{version}-x86_64.zip"
  appcast "https://plex.tv/api/downloads/6.json"
  name "Plex"
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
