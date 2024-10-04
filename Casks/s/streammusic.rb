cask "streammusic" do
  version "1.3.2"
  sha256 "56ce9dbf0300369b2c30f021362c7ff85fbb485482577ae203449db170e7464c"

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
