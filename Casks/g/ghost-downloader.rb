cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.0"
  sha256 arm:   "786e5ece8fbdcb27afe1902263d2890f5edd4d761b7ff24a54ac684aa6ace907",
         intel: "4df957fa7b34e6068b7d19a61c86d2d51845f1d7b0baca3d5b616fd38e02eca7"

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
