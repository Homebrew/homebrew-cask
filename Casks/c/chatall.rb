cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.71.100"
  sha256 arm:   "1812d7467ea06f039f9b20287faecf5a5374d8997ca49a12fa5f6594514562b1",
         intel: "6cc28aba72810a2be764ab98511cb9149c4f8472a37d946ede4fce60f3ab0f7f"

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
