cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "fc0d0d65e53cde82669fb348d71f4cb2b1dde8a77d667890b9616238dfa0d33c",
         intel: "c50b75b5c1903ab960d2b29a0961e90f73cca8da0d8bbf96a736a18d0b75d142"

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
