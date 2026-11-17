cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.7"
  sha256 arm:   "945a6603c7af18a9b0cc0e9bf74a213487681a7eccca12c9c068483969851243",
         intel: "28ab1e9e5f19c595053274453f3881c9736c6bd754bd41ce914236f57ac9b619"

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
