cask "streammusic" do
  version "1.3.5"
  sha256 "df7a4112e9fcf4144d1ef840aa252046755d341c6879c5dad3485f4cf52667cb"

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
