cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.31.47"
  sha256 arm:   "a3989ef35f20c139cb384c188a94ef54e48a54fda7858368c8819805d915aecd",
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
