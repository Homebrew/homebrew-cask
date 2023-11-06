cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.51.79"
  sha256 arm:   "8720918eec7eb1929984cca7c5080afb128603065dc7edc7f860eae6811095e1",
         intel: "f6cd9f3e8ea6159f05aeb8d7aa10591d7e45e421578a731ef9a7367b535bf968"

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
