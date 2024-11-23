cask "streammusic" do
  version "1.3.3"
  sha256 "8518b32bb847e037dc72eb08cad49d73403c9c10110029d7b52e4137b68c072b"

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
