cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.3.4"
  sha256 arm:   "37b803167c1958293239fc13d6e11098e7de759cd6e8c178e79c37d4ad11d0a5",
         intel: "cd309db552190a43936829a377065e6fdb0ab11c6efb7ff859b9d56f6edc87f0"

  url "https://github.com/XiaoYouChR/Ghost-Downloader-3/releases/download/v#{version}/Ghost-Downloader-v#{version}-macOS-#{arch}.dmg"
  name "Ghost Downloader"
  desc "Cross-platform multithreaded download manager"
  homepage "https://gd.xychr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Ghost Downloader.app"

  uninstall quit: "io.github.xiaoyouchr.GhostDownloader"

  zap trash: [
    "~/Library/Application Support/GhostDownloader",
    "~/Library/Preferences/io.github.xiaoyouchr.GhostDownloader.plist",
  ]
end
