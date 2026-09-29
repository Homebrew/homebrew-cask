cask "deepseek-harness" do
  version "0.2.0-rc.2"
  sha256 "b83daf23e482d96c4c039a2a786daf3a7082e867ea4ad93c51468020defa8a2a"

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
    "~/Library/Caches/@deepseek-ai/dsh-desktop",
    "~/Library/Caches/@deepseek-aidsh-desktop-updater",
    "~/Library/Caches/com.deepseek.dsh",
    "~/Library/Caches/com.deepseek.dsh.ShipIt",
    "~/Library/HTTPStorages/com.deepseek.dsh",
    "~/Library/HTTPStorages/com.deepseek.dsh.binarycookies",
    "~/Library/Logs/@deepseek-ai/dsh-desktop",
    "~/Library/Preferences/com.deepseek.dsh.plist",
    "~/Library/Saved Application State/com.deepseek.dsh.savedState",
  ]
end
