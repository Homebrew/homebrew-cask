cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.8"
  sha256 arm:   "ca037da0550f8f31a83448797220b8ac1c94d46fa437d4cb28108741d0eaf265",
         intel: "0d69c2c76dcb7e7fbc3dc31cb9b1c80e58de1dbfb0270a7fd76f601aaabf4905"

  url "https://github.com/XiaoYouChR/Ghost-Downloader-3/releases/download/v#{version}/Ghost-Downloader-v#{version}-macOS-#{arch}.dmg"
  name "Ghost Downloader"
  desc "Cross-platform multithreaded download manager"
  homepage "https://gd.xychr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Ghost Downloader.app"

  uninstall quit: [
    "com.xychr.ghostdownloader",
    "io.github.xiaoyouchr.GhostDownloader",
  ]

  zap trash: [
    "~/Library/Application Support/GhostDownloader",
    "~/Library/Preferences/io.github.xiaoyouchr.GhostDownloader.plist",
  ]
end
