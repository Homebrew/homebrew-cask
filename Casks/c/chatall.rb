cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.79.105"
  sha256 arm:   "a7fbbc83f7a3faea7e28881a1f0cb3baf79b5e76080afa59318e83a109145d6e",
         intel: "e88e62236925b53bd0314e55a08dbd4f89437f31c7e185a0b7c7d6637ff105fa"

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
