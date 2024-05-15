cask "streammusic" do
  version "1.2.9"
  sha256 "e10325ae42ac8e64fcbe6619161be8f5a307b45fdd394004d3b8bf8bd1c79b00"

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
