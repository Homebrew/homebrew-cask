cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.39.63"
  sha256 arm:   "0368f2f6792aa0ab4dc2de8c9aeca1489ae1ccf19aadadad1beb6e0ad095841d",
         intel: "8d75080556b67e3b2949165691760636fca68bc9ce2667b0a06300f51460e37c"

  url "https://github.com/sunner/ChatALL/releases/download/v#{version}/ChatALL-#{version}-mac-#{arch}.dmg"
  name "ChatALL"
  desc "Concurrently chat with ChatGPT, Bing Chat, Bard, Claude, ChatGLM and more"
  homepage "https://github.com/sunner/ChatALL"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "ChatALL.app"

  zap trash: [
    "~/Library/Application Support/ChatALL",
    "~/Library/Caches/ai.chatall",
    "~/Library/Preferences/ai.chatall.plist",
    "~/Library/Saved Application State/ai.chatall.savedState",
  ]
end
