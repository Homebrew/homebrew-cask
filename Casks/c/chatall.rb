cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.59"
  sha256 arm:   "6019f7836a585fd06b98a2c8718b2d17c4d71b48799ccb061772de7aab2f4046",
         intel: "e3c160a950116c1c4b1f47452eb0d5d879364590722cc241ca29b92f34d5818e"

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
