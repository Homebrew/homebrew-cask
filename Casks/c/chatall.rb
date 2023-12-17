cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.54.83"
  sha256 arm:   "bf3e6e0263a0df28709d674f4745f93f76bd66bb3709f998ae17940e401432eb",
         intel: "68dc858f89be6ca3687bba3e0e3761d2fe7b4ef5ba01e8bec001afe2ae1b6a53"

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
