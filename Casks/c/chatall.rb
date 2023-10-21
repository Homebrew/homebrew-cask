cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.50.75"
  sha256 arm:   "4a3714ea98749d3523b4ab3c2740cca168db27665fd363f296198af2ab91c784",
         intel: "70e51a7d36d64826f6c2bc03a1b3c54481aef128d62b44e7c2a50cf841afa265"

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
