cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.41.66"
  sha256 arm:   "b488cb38da3c211ef4cc1befc118930b412f951059f7f063c19ffd8383b25ae5",
         intel: "f9aaf0eb23c6c4ad02217b17cb2381775e6533111702eaa7dd6d98766f3ef06a"

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
