cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.53.81"
  sha256 arm:   "6ac0f534a29ce129f7dbc057f0dfdc4935563983c9bc800ddd53a3f5d153f98c",
         intel: "b0386cb2ba23f8f3185d4247f62329cd07db42ec2d663ecbbc18b21bc2eaf2df"

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
