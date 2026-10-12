cask "deepchat" do
  arch arm: "arm64", intel: "x64"

  version "1.1.3"
  sha256 arm:   "1a65b868af90992b5af0268115253c25bbee0dc689607a229db9648db686056f",
         intel: "a537965f04064e76ad4cf619e64b9778651f6995063f0534f54dc6869fd15483"

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
