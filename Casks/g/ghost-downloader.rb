cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.6"
  sha256 arm:   "222e9bbd544dfd838b7a807456cc73fc5d7a152f7743516dff88e159b2ebb4e8",
         intel: "26bd1fc9d978ede81f342e0a86541b8600ed832509f2a4f94612a25c460eb0ae"

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
