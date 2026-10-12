cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "960d747d94e7a01c5c0d8ea0f7637d224169b62eab90642f3c8d54a91af82e36",
         intel: "595f43b1a95de05e4b53646cf91330ed4f2925cb98ac793247703cc3ef73cc73"

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
