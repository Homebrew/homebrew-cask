cask "deepseek-harness" do
  version "0.2.2-rc.3"
  sha256 "1648a29609710d852f04fb3c50602ff37b1ed0def1d2aff65ce813daa5a4f4a4"

  url "https://download.deepseek.com/dsh-desk/bin/mac-arm64/deepseek-harness-#{version}-mac-arm64.zip"
  name "DeepSeek Harness"
  desc "Plugin-based AI agent desktop application"
  homepage "https://www.deepseek.com/harness/"

  livecheck do
    url "https://download.deepseek.com/dsh-desk/feeds/mac-arm64/nightly-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DeepSeek Harness.app"

  uninstall quit: "com.deepseek.dsh"

  zap trash: [
    "~/.dsh",
    "~/Library/Application Support/@deepseek-ai/dsh-desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.deepseek.dsh.sfl*",
    "~/Library/Caches/@deepseek-ai/dsh-desktop",
    "~/Library/Caches/@deepseek-aidsh-desktop-updater",
    "~/Library/Caches/com.deepseek.dsh",
    "~/Library/Caches/com.deepseek.dsh.ShipIt",
    "~/Library/HTTPStorages/com.deepseek.dsh",
    "~/Library/HTTPStorages/com.deepseek.dsh.binarycookies",
    "~/Library/Logs/@deepseek-ai/dsh-desktop",
    "~/Library/Logs/DeepSeek Harness",
    "~/Library/Preferences/com.deepseek.dsh.plist",
    "~/Library/Saved Application State/com.deepseek.dsh.savedState",
  ]
end
