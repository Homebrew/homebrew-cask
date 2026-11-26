cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.6.1"
  sha256 arm:   "85f87ae7d2100b2296bf09097cc3e56011b1dc96e05fab7e1c7af6bf29caf38c",
         intel: "dce2c5861777a21f0a24045a2b8657c56e57213ed1d117d1891fa281b974c500"

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
