cask "streammusic" do
  version "1.3.6"
  sha256 "af8cd445ad13d55365a0ee39abbecc490291c1f8239fd19b000816be25be46e6"

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
