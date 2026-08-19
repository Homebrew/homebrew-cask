cask "deepseek-harness" do
  version "2.0.1"
  sha256 "84debb8bf2642d82f0eb77c9f087b030db3b8b8672a0b7c3423c681f61738ff9"

  url "https://github.com/anywhere-labs/deepseek-harness-desktop/releases/download/v#{version}/DSH.Desktop-#{version}-universal.dmg"
  name "DSH Desktop"
  name "DeepSeek Harness Desktop"
  desc "Community-maintained desktop client for DeepSeek Harness"
  homepage "https://dshdesktop.cn/"

  livecheck do
    url "https://github.com/anywhere-labs/deepseek-harness-desktop/releases/latest"
    strategy :github_latest
  end

  # Universal build: macOS 12.0 (Monterey) or later, both Apple Silicon and Intel
  depends_on macos: :monterey

  app "DSH Desktop.app"

  zap trash: [
    "~/Library/Application Support/DSH Desktop",
    "~/Library/Caches/DSH Desktop",
    "~/Library/HTTPStorages/DSH Desktop",
    "~/Library/Logs/DSH Desktop",
    "~/Library/Preferences/ai.deepseek.dsh.desktop.plist",
    "~/Library/Saved Application State/ai.deepseek.dsh.desktop.savedState",
  ]
end
