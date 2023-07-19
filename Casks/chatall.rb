cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.36.52"
  sha256 arm:   "8c76cffdbd27cc7aa879172964d281d7e199f1b72ecdec759e46acf9670fc536",
         intel: "64194cf0f6de9550ed8a3e2cd7e23e213b389dc81d2ac8390a5dec2c0de38cba"

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
