cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.50.73"
  sha256 arm:   "210d7019442af7403c00f229140b951ec28d787689d0cc1094e6d837b298ebb7",
         intel: "f43c4d9c20a94a634fd92d27e1895abe25fd171fd3e229d79df18ddc88042d66"

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
