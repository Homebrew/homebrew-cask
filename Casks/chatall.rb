cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.32.48"
  sha256 arm:   "347568df5df6500e3cbbcf1aa17b735892c3a61204f3786064485aa66e0bf901",
         intel: "48563089adafedf963e329f3d201faf16cf8911f7de41c7cd16182c6ed5a8e68"

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
