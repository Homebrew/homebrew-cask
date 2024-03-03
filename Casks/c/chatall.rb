cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.59.89"
  sha256 arm:   "07519205525b5dcdfa3b0d4b2e630dec15970e239449d3d27f3fb5964c010a8f",
         intel: "c996dbe668211fb9a3a04ebed48bedb298cff4ee6ac11ade057a24d91b872009"

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
