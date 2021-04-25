cask "plex" do
  version "1.31.0.2254-43df1e6e"
  sha256 "39aab61a8d5796e59e5ef05e2fe39a90a701215e924932663325be18004bbc66"

  url "https://downloads.plex.tv/plex-desktop/#{version}/macos/Plex-#{version}-x86_64.zip"
  name "Plex"
  desc "Home media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/6.json"
    regex(/"version"\s*:\s*"(\d(?:\.\d+)*-[a-f0-9]{8})"/i)
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
