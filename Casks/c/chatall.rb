cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.51.77"
  sha256 arm:   "f131d8749309cfbc00bafc836aa5b0483f408b5c1eb575524fa0e78182e6b27c",
         intel: "d27e1bbe877cce56b59d3fc3d2a5537f95231eca627dec585de741d177783aff"

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
