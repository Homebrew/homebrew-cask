cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.57"
  sha256 arm:   "4a367ee5d755957f5e95ff13ff438a9a22656349976f9e3d4f8a8b1d0be8e5d6",
         intel: "c6f15468221be2d9c3f606b757e6923a3c3e7c50861405b836c292ef3b064584"

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
