cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.39.62"
  sha256 arm:   "bad62f2d1e3257acfcfb5a912b810cd1f081e19e5d7e097b562744024326ba9d",
         intel: "e2fb14451b42b7aa276b810da17cbae6f4d8f37db4fafc5980a6e3e34afa0241"

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
