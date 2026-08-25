cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.3.5"
  sha256 arm:   "f0ab5404ccd43fdaa1d8a2920eac262ae4d5716f79d47c2fa7260b53c0a46952",
         intel: "cfdc284c6b0aaf6aef44586c641b10483874aaaf20055d77308bb5c3b4244e8b"

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
