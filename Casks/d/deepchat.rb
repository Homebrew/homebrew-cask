cask "deepchat" do
  arch arm: "arm64", intel: "x64"

  version "1.1.4"
  sha256 arm:   "e63b0d18e7cf0a26e9d80084cc2e3b50df1aa87d82cff3494e28e001ad766055",
         intel: "1b50fa8f288f550b0dbdfca40f5f6d6cf611d9b96fc3af22b3eb9418c7541fc2"

  url "https://github.com/ThinkInAIXYZ/deepchat/releases/download/v#{version}/DeepChat-#{version}-mac-#{arch}.dmg"
  name "DeepChat"
  desc "AI assistant"
  homepage "https://deepchat.thinkinai.xyz/", browsed: "2026-09-26"

  livecheck do
    url "https://github.com/ThinkInAIXYZ/deepchat/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "DeepChat.app"
  binary "#{appdir}/DeepChat.app/Contents/MacOS/DeepChat", target: "deepchat"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wefonk.deepchat.sfl*",
    "~/Library/Application Support/DeepChat",
    "~/Library/Logs/DeepChat",
    "~/Library/Preferences/com.wefonk.deepchat.plist",
    "~/Library/Saved Application State/com.wefonk.deepchat.savedState",
  ]
end
