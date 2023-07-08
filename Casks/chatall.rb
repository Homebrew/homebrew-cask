cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.30.46"
  sha256 arm:   "ea8d6b4775d84f0d8f6177bfa17ae729bf9356a173df8ea87294208c56da2e2d",
         intel: "59ec4df6dba39ac029516c3544f2748bd3a5e5fe02b380a34e58d318a1631c62"

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
