cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.5"
  sha256 arm:   "e1850125ca304ea3508c62bfd2b0f35da2726f68a4c3c298c149fe72f745e55b",
         intel: "0a7320734aba1321563229ebfe3874a7c83bd77dfa98b04649f4cb4e6cfa28c3"

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

  uninstall quit: "io.github.xiaoyouchr.GhostDownloader"

  zap trash: [
    "~/Library/Application Support/GhostDownloader",
    "~/Library/Preferences/io.github.xiaoyouchr.GhostDownloader.plist",
  ]
end
