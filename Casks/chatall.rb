cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.33.49"
  sha256 arm:   "c64627ddbcc9002c3b77241fec61821f3df4778cf2fdc4f3a6d7cd49b22df9f8",
         intel: "97642d8ee35fcc47b61e77bd6258c79ddcfad61c00c87bb6d88f61f38df2d37e"

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
