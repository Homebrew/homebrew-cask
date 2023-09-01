cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.41.67"
  sha256 arm:   "e595f4fdd67edcd7729a3a14dd112abae42f7bb9e79e92f058cb3947c2b5d026",
         intel: "be1af4c16a9dec8baaecdf2dcc72374f970666456ac2b9907518dd35fcfa2704"

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
