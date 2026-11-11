cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.2"
  sha256 arm:   "670aab380e4f8ce67013d5817d05bbdb2a8094a0098fb755fe83d9ba7893ff71",
         intel: "b62967737a785f6d200acf39158e7df9dee0346a3f99f5877c6ec940bc6cadf4"

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
