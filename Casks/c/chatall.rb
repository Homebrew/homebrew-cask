cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.82.107"
  sha256 arm:   "cc589529b9dad36c80d0d549229f52a5f7e74d42ab8ceecb536ab269268824f9",
         intel: "5451155e7e7ce98850f7110784ae694805de55259d89fc5a6e112e6d45ca58a0"

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
