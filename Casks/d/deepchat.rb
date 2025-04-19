cask "deepchat" do
  arch arm: "arm64", intel: "x64"

  version "0.0.16"
  sha256  arm:   "f1f689ca921803dade5a4e96a5ab7109b70f07387c1a423ff4d116e788f30725",
          intel: "293a2ec6d460144ca5ea81be3add3581c87c8dc3148719bab8746c8226afbeb1"

  url "https://github.com/ThinkInAIXYZ/deepchat/releases/download/v#{version}/DeepChat-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ThinkInAIXYZ/deepchat/"
  name "DeepChat"
  desc "AI assistant"
  homepage "https://deepchat.thinkinai.xyz/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DeepChat.app"
  binary "#{appdir}/DeepChat.app/Contents/MacOS/DeepChat", target: "deepchat"

  zap trash: [
    "~/Library/Application Support/DeepChat",
    "~/Library/Logs/DeepChat",
    "~/Library/Preferences/com.wefonk.deepchat.plist",
    "~/Library/Saved Application State/com.wefonk.deepchat.savedState",
  ]
end
