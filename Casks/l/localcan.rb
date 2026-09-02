cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "e50678a413570fdd7de6cd3f401a738bf84a0feb4053f396b7cc9d5109093d07",
         intel: "6a75ea291668038f5cf34f14d1de93f240d7b6610c2de3f0204c7117ebee5caf"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :monterey

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
