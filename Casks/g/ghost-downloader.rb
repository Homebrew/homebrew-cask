cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.7"
  sha256 arm:   "d0ac6fc8dcde13300065f8198144e1c703412ec51c1811de4ca2000cb5b685eb",
         intel: "53c0936b50ee34669dff20bb2d0d9418e4e788ff8c60c1e96f540fc9c5695dd1"

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
