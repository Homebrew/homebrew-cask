cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.62.94"
  sha256 arm:   "def08b1e9515cefd3dbbd322f2a4f10c7dd8a4368c66c9605a74a89528479dc2",
         intel: "3e5a5ba5ae2f46851ff5bddc2ec0b737796824c2c30f4e2cca7f2d3d580855ab"

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
