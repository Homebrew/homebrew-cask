cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.78.103"
  sha256 arm:   "c9aaec64fc01410539dd315aa8742ba99edfc3afe36c5957d7303d3a3979393a",
         intel: "54f166a46bc854f151934c019c489917dca571ef663d25a35ccc3c6584bda36a"

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
