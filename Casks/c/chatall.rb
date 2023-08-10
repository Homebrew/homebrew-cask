cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.58"
  sha256 arm:   "1a949ec9df9e8cf761ebff8d7faf4952ea528935215e525a74168c0a9d4e8ed4",
         intel: "84c0e9ab6d913e96d39eb91f40fa0f358045f5632e08dfb7e3d384bc8344d923"

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
