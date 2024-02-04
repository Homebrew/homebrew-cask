cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.58.87"
  sha256 arm:   "a201ec686d422fadc310884ca3038a6eea4630a68e33fcd803926fd57fe736ce",
         intel: "ee91b6e116cbc43b419c730070c74f5b9cb68b75840c0df0add2646b3aea0ae9"

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
