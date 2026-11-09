cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.1"
  sha256 arm:   "9e8f6b7911f027a48374360290a30fd5662249f09fc148b54d5c2605d10b1760",
         intel: "3eef07e1c9cc5e1e5f9a28caf8fb273b70c82f727599d88e5352f7ac29eefd99"

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
