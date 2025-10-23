cask "deepchat" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "0.4.2"
  sha256 arm:   "afb8e85a2bd93c21130c882fdab9ad152a06577aa02b8b07ed63409c776243ff",
         intel: "f20fa93f0b8006b188a956af21d083904c9940f6a66c7bad31a806582a474e4d"

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
