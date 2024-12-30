cask "streammusic" do
  version "1.3.4"
  sha256 "b33347422b5f823266f853f5b24b804d801dc73743bc5cbb4db12c7ece81bf21"

  url "https://github.com/gitbobobo/StreamMusic/releases/download/v#{version}/StreamMusic_#{version}.dmg",
      verified: "github.com/gitbobobo/StreamMusic/"
  name "StreamMusic"
  desc "Music client compatible with self-hosted music services"
  homepage "https://www.aqzscn.cn/"

  depends_on macos: ">= :catalina"

  app "StreamMusic.app"

  zap trash: [
    "~/Library/Application Scripts/cn.aqzscn.streamMusic",
    "~/Library/Application Support/cn.aqzscn.streamMusic",
    "~/Library/Containers/cn.aqzscn.streamMusic",
    "~/Library/Preferences/cn.aqzscn.streamMusic.plist",
  ]
end
