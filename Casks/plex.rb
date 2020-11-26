cask "plex" do
  version "1.24.0.1483-714cba36"
  sha256 "4eb0cccfb6ddb52371364b0e156216e1476e36d6747a0e9c9c11a02b4859ea4c"

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
