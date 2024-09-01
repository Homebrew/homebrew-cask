cask "streammusic" do
  version "1.3.1"
  sha256 "efd2248461b834d30e24871c2c6264dda2b06c9fe762dd2e1344732072d5af0e"

  url "https://oss.aqzscn.cn/stream-music/versions/#{version}/StreamMusic_#{version}.dmg"
  name "StreamMusic"
  desc "Music client compatible with self-hosted music services"
  homepage "https://www.aqzscn.cn/"

  livecheck do
    url "https://music.aqzscn.cn/docs/versions/latest/"
    regex(/href=.*v?(\d+(?:\.\d+)+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "StreamMusic.app"

  zap trash: [
    "~/Library/Application Scripts/cn.aqzscn.streamMusic",
    "~/Library/Containers/cn.aqzscn.streamMusic",
  ]
end
