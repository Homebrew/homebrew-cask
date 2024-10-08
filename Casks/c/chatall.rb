cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.83.108"
  sha256 arm:   "4382cd9b040931437af5bc2fc626e3b1d421a8b6f80600e43363b757ede16f6d",
         intel: "6ce54f4cf98fe0fee12819b843d5502180e2424663fd57df927633aae745e0d1"

  url "https://github.com/sunner/ChatALL/releases/download/v#{version}/ChatALL-#{version}-mac-#{arch}.dmg"
  name "ChatALL"
  desc "Concurrently chat with ChatGPT, Bing Chat, Bard, Claude, ChatGLM and more"
  homepage "https://github.com/sunner/ChatALL"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ChatALL.app"

  zap trash: [
    "~/Library/Application Support/ChatALL",
    "~/Library/Caches/ai.chatall",
    "~/Library/Preferences/ai.chatall.plist",
    "~/Library/Saved Application State/ai.chatall.savedState",
  ]
end
