cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.55"
  sha256 arm:   "585851cc3881ac3fd0a78dabb4b59487414c1c350f4e5c61fae639f66bf281a8",
         intel: "49d96bc6ec2e665bf14841d222d076d74e6a048426d7935e78459a25842ed890"

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
