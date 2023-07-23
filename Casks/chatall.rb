cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.54"
  sha256 arm:   "1b1d72032346b4378e263e259ca0b24a9b93a86dfe1e42b4278e9b30c1e42de1",
         intel: "125a8f067232ea55743bcf48f863bb0e0477f9c5d9f1913d7e7c910b772e7819"

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
