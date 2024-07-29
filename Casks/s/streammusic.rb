cask "streammusic" do
  version "1.3.0"
  sha256 "b140a38fc7108d1511580ad4b71e264f09fbefdb211da128106b000d7cf2237c"

  url "https://oss.aqzscn.cn/stream-music/versions/#{version}/%E9%9F%B3%E6%B5%81v#{version}.dmg"
  name "StreamMusic"
  desc "Music client compatible with self-hosted music services"
  homepage "https://www.aqzscn.cn/"

  livecheck do
    url "https://music.aqzscn.cn/docs/versions/latest"
    regex(/href=.*v?(\d+(?:\.\d+)+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "音流.app"

  zap trash: [
    "~/Library/Application Scripts/cn.aqzscn.streamMusic",
    "~/Library/Containers/cn.aqzscn.streamMusic",
  ]
end
