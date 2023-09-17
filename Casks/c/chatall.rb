cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.42.70"
  sha256 arm:   "506bcb103a4b827987601ab25fb3b9ccf6e1e6ce9c991b296adb7d340598bf85",
         intel: "436491b6ef93b2ca324a8f9c9d5562b7eae60f80b70f85aa5f09d3deacf5b8a9"

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
