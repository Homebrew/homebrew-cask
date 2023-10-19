cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.50.74"
  sha256 arm:   "3e9c125fce90e46bc67a24a18c25631f6e09141136e1c030ab2bc562d29c753c",
         intel: "af48e90d3a501b370d6ee22b3e8a803a5f6b0473a4ca23377d2507c50a86f754"

  url "https://github.com/sunner/ChatALL/releases/download/v#{version}/ChatALL-#{version}-mac-#{arch}.dmg"
  name "ChatALL"
  desc "Concurrently chat with ChatGPT, Bing Chat, Bard, Claude, ChatGLM and more"
  homepage "https://github.com/sunner/ChatALL"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "ChatALL.app"

  zap trash: [
    "~/Library/Application Support/ChatALL",
    "~/Library/Caches/ai.chatall",
    "~/Library/Preferences/ai.chatall.plist",
    "~/Library/Saved Application State/ai.chatall.savedState",
  ]
end
