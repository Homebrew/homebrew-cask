cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.51.76"
  sha256 arm:   "1e7ee9547e8e7fdc6edbb2df36e9d18aa7670207d0712219e32d5161e227bf19",
         intel: "92d963a6acb78ff7ee8bfa927c1fa628cacf71cc373fe8f36024273126b5f502"

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
