cask "ghost-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "4.3.7"
  sha256 arm:   "0e7cd8be0c11f8cc4d55cf5385238e5d5193f02efd0b5a144f82772d76667460",
         intel: "c1c75e051e14fb02879cf29084105fa263e50253db960d8a4004dcdfdce0b4a7"

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
