cask "deepchat" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "0.3.1"
  sha256 arm:   "40ceef7ee0345849c1c711bae3d4adbbbacb28591a47969142a31123d96cc8c8",
         intel: "d0eb40cbaf2ad1cbd161c58dd23bfd1d096b15a40637604c642e0c327d3f1ee7"

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
