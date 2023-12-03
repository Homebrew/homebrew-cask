cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.54.82"
  sha256 arm:   "0c9fcf652a1eb0883a2c50e277a087d15557c0e95cbb3a301df0573158ccb320",
         intel: "3f8040d71511b21c050f2c18bba7d151e16280d59486231d284df128377642d5"

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
