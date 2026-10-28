cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.6"
  sha256 arm:   "13309754dcc6ac42165a406875607c5a5f1f8fcdc6570ceb062d48df7c234b24",
         intel: "7be6ba0777daabd837eed81ad59e9d0fc8ae5cea1c117b1f1911b5a9f5799418"

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
