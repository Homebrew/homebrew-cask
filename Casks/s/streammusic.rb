cask "streammusic" do
  version "1.2.7"
  sha256 "8934b389bd0f046a8dde3b8d6f317b3625192395481da38e0fe4e94853016a06"

  url "https://oss.aqzscn.cn/stream-music/versions/#{version}/%E9%9F%B3%E6%B5%81v#{version}.dmg"
  name "StreamMusic"
  desc "Music client compatible with self-hosted music services"
  homepage "https://www.aqzscn.cn/"

  livecheck do
    url "https://www.aqzscn.cn/archives/stream-music-versions"
    regex(/href=.*v?(\d+(?:\.\d+)+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "音流.app"

  zap trash: [
    "~/Library/Application Scripts/cn.aqzscn.streamMusic",
    "~/Library/Containers/cn.aqzscn.streamMusic",
  ]
end
