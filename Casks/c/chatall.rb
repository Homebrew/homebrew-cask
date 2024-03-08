cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.61.92"
  sha256 arm:   "4f1866e380dffdb22863f83677dabe729da97e74ade9a70b2de44f5d0b702c44",
         intel: "1b4535df11e207480f871cecaaa2b8ad8e61bbbd3d7e311e9d1916932f97b92f"

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
