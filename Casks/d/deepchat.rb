cask "deepchat" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "0.5.3"
  sha256 arm:   "88d17357bbefe1f446c05c78e83d74d90320233621d2a327e9641cba68173f50",
         intel: "fded3815532f6656de02dc9b0f6433a6bc15b0eb7cd13e5daf46bb96faf3b3a6"

  url "https://github.com/ThinkInAIXYZ/deepchat/releases/download/v#{version}/DeepChat-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ThinkInAIXYZ/deepchat/"
  name "DeepChat"
  desc "AI assistant"
  homepage "https://deepchat.thinkinai.xyz/"

  livecheck do
    url "https://cdn.deepchatai.cn/upgrade/mac#{livecheck_arch}.json"
    strategy :json do |json|
      json["version"]
    end
  end

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
