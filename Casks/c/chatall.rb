cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.42.68"
  sha256 arm:   "dc513775fb4874f41344a9ec5b3a402da38f147e81dbcbd421fa871ddcfa1d58",
         intel: "fa58a5e0c5eff92f2d97bb608b0711622420b9f1984688f2a62cfac3f1fbed2c"

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
