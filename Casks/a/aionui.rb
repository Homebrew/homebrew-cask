cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.32"
  sha256 arm:   "71da67eb359534c794b0e97a24f8254c9c2e2c59f86cd504e7270537ce33fc7e",
         intel: "0a11d0696ef3de0e20fc2b9364c57341f9644d2ccbcea2655d300e30ecd207ec"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
