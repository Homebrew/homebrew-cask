cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.51.78"
  sha256 arm:   "9feeb31c241ee5ef19465c8e1894d57a790bd367be9c96ceaa68dc5ff9eb97c3",
         intel: "2a97e720929b6b2e22d2df78c034d541f2850071fc4eca1ad5c81978a6ac590e"

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
