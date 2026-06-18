cask "mac-sai" do
  version "1.11.7"
  sha256 "c17ad761c8268a681f42c6bfef6d0ce4dde610ff3928aaf67c34e4fd9a0b3767"

  url "https://github.com/iliyami/MacSai/releases/download/v#{version}/MacSai-#{version}.dmg"
  name "Mac Sai"
  desc "System cleaner, optimiser, and malware scanner"
  homepage "https://github.com/iliyami/MacSai"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Mac Sai.app"

  zap trash: [
    "~/Library/Application Support/MacClean",
    "~/Library/Caches/com.macclean.app",
    "~/Library/Logs/MacClean",
    "~/Library/Preferences/com.macclean.app.plist",
    "~/Library/Saved Application State/com.macclean.app.savedState",
  ]
end
