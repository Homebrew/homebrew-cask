cask "streammusic" do
  version "1.3.7"
  sha256 "3ce0573b78fedd36a37ba0a1175efee9aedccb033a6ad2f299c428e8a4c4dd8d"

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
