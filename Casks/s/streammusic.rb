cask "streammusic" do
  version "1.3.8"
  sha256 "faaebf6df791d774db74fe8bb9f7a44d91f331068a1fe46e2c0621321b523f46"

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
