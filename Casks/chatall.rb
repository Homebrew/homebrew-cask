cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.34.50"
  sha256 arm:   "c7a53c400bc93a55ea7e94bf066a6af1dd137b63db3cde8394752ea53616a559",
         intel: "56718b60d3078f0d42d11a889ff50fc2ba6b4a7cfdec1058ecadf10ed2c5f4c5"

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
