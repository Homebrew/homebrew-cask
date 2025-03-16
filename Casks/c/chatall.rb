cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.84.109"
  sha256 arm:   "931f0ef6a229857ae6af0a243400244981d0fd07088cba2174099424f265a927",
         intel: "17d5c6863d872607bc3bb7e4759b3b1cacf9277739c6b5eefffec9fc077724f8"

  url "https://github.com/sunner/ChatALL/releases/download/v#{version}/ChatALL-#{version}-mac-#{arch}.dmg"
  name "ChatALL"
  desc "Concurrently chat with ChatGPT, Bing Chat, Bard, Claude, ChatGLM and more"
  homepage "https://github.com/sunner/ChatALL"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ChatALL.app"

  zap trash: [
    "~/Library/Application Support/ChatALL",
    "~/Library/Caches/ai.chatall",
    "~/Library/Preferences/ai.chatall.plist",
    "~/Library/Saved Application State/ai.chatall.savedState",
  ]
end
