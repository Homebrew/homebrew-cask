cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.42.69"
  sha256 arm:   "7375d2fd848147703a4129bd8287bba918430344d1a5e36d55f6bca5909b4d5a",
         intel: "67b1900c1ec84acf0fd1dc7d0f8ad22b3bcde42b98be49ab101e4ad976672993"

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
