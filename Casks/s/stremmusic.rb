cask "streammusic" do
  version "1.3.4"
  sha256 "b33347422b5f823266f853f5b24b804d801dc73743bc5cbb4db12c7ece81bf21"

  url "https://github.com/gitbobobo/StreamMusic/releases/download/#{version}/StreamMusic_#{version}.dmg"
  name "StreamMusic"
  desc "Music client compatible with self-hosted music services"
  homepage "https://www.aqzscn.cn/"

  livecheck do
    url :url
    regex(/.*v?(\d+(?:\.\d+)+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "StreamMusic.app"

  zap trash: [
    "~/Library/Application Scripts/cn.aqzscn.streamMusic",
    "~/Library/Containers/cn.aqzscn.streamMusic",
  ]
end


