cask "plex" do
  version "1.28.0.1681-cc6e807c"
  sha256 "2c17f65bfab67fbc3cd577843a0eb73628f67da7498bc7347a263ad37abe3f64"

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
