cask "deepchat" do
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "e858f0a2b01249abcffb24411d520d4453eba5e8894d55a4f0c3d971842e9a77",
         intel: "e45b9358cc4ccb487ee27d83479b6c51f4e2ef083e27765033c8e5c9fe126557"

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
    "~/Library/Application Support/DeepChat",
    "~/Library/Logs/DeepChat",
    "~/Library/Preferences/com.wefonk.deepchat.plist",
    "~/Library/Saved Application State/com.wefonk.deepchat.savedState",
  ]
end
