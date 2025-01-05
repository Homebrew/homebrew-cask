cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.33.1"
  sha256 arm:   "4ec8a6cdb73cf18175b9aa0e720b8765b439e514062739b062ef9789ca782b40",
         intel: "265be622edcb6682945608c4415cfb983d495ffd62e10061e0cab48ce07e7a12"

  url "https://github.com/minbrowser/min/releases/download/v#{version}/min-v#{version}-mac-#{arch}.zip",
      verified: "github.com/minbrowser/min/"
  name "Min"
  desc "Minimal browser that protects privacy"
  homepage "https://minbrowser.github.io/min/"

  depends_on macos: ">= :catalina"

  app "Min.app"

  zap trash: [
    "~/Library/Application Support/Min",
    "~/Library/Caches/Min",
    "~/Library/Saved Application State/com.electron.min.savedState",
  ]
end
