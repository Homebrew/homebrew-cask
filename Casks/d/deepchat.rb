cask "deepchat" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256  arm:   "dcb4cf1f9b0867355735c552eb87c6db6196f35190b397fd838750f317b9fff7",
          intel: "2ca9636be84a74c1d0a3ccc1110bcb1b8209ed5b7a49b482823508f226e525f7"

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
