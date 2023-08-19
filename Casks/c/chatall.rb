cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.61"
  sha256 arm:   "699c4ecebbdd5bfddc8d0b0299d45e145d83cb69ed37462215a8c8062d308836",
         intel: "d44be21d26b1d8a788a2507363736e42b720c770d8c39f267704a019f54c753c"

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
