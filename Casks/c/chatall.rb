cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.48.71"
  sha256 arm:   "0e8cce2b4020263527f7695923c9dea90eda4ddf867c3479f9cd9da689efded0",
         intel: "275d58a764e3c0a442c575148a529ecff4bd40e2c5d7c4e71c1ac77fa6f8491c"

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
