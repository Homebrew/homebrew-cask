cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.69.98"
  sha256 arm:   "c9ae442c479198b641269f4157faebd34af17f8e4aa6939efc0e34f33655f952",
         intel: "e5d044340121be2092e0134988c666ffc096e29f0e72d6f3e520147fbe1b0759"

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
