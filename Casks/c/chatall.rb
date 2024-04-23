cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.74.101"
  sha256 arm:   "a2dc077c28f0bd3512474834326e38130886ecb3d0a1c9c45a04b3503cddb42a",
         intel: "7f386e4375a8f1ac6c83f18299983ba712bb84b106533626b56caa5b715a7a33"

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
