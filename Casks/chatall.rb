cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.36.51"
  sha256 arm:   "461de2380c707f0d5266bb4786ffd0da8a0bc820c881b53949ff7a66b5fe2245",
         intel: "2a58d7db7b50d82b157542f8b57a0c653b76a0ce716241678a6000c56abd65e3"

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
