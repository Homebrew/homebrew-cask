cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.48.72"
  sha256 arm:   "e35ef307a1150caad4812fa74732e2a012d5aff14aeb4b33f59a9c445b43ec05",
         intel: "821fd544ab82019d17b3f8dc63c5b2c84c0c5efbf525c4d5773a3611c531c113"

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
