cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.5"
  sha256 arm:   "9e731285938e841e5158372545d73060c72ed57f251e1aa71d5bca19b219756d",
         intel: "73375f040e01bea4a20108bb76fc4678315469b720bd1c5e0823de507fdbda73"

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
