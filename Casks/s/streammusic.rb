cask "streammusic" do
  version "1.1.10"
  sha256 "fc1d3a12d2463f5bacbbb6936d81bb5e97b394cd545ed349aa079272fe561bc5"

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
