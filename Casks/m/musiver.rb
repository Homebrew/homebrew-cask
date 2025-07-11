cask "musiver" do
  version "1.3.9"
  sha256 "02aaa916d89180c85929bbee713586fa953a9e46d41b7aefc1a894eaf289b6d2"

  url "https://github.com/gitbobobo/StreamMusic/releases/download/v#{version}/Musiver_#{version}.dmg",
      verified: "github.com/gitbobobo/StreamMusic/"
  name "StreamMusic"
  desc "Music client compatible with self-hosted music services"
  homepage "https://music.aqzscn.cn/"

  depends_on macos: ">= :catalina"

  app "Musiver.app"

  zap trash: [
    "~/Library/Application Scripts/cn.aqzscn.streamMusic",
    "~/Library/Application Support/cn.aqzscn.streamMusic",
    "~/Library/Containers/cn.aqzscn.streamMusic",
    "~/Library/Preferences/cn.aqzscn.streamMusic.plist",
  ]
end
