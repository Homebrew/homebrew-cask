cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.3.6"
  sha256 arm:   "6c27f765c849dfb49c29dbff4f8762a6c93ba871634cbfeb89c9172ca4afe7b7",
         intel: "b47132bfbb48c4a1fad43ca35af12d25e611509ff841037f81141b140b6d88c0"

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
