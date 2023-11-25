cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.52.80"
  sha256 arm:   "8eebecf309d1ad20e7ac46a181d4735901c24f69fef6bddabfaf650af81e5c51",
         intel: "c3db6f57bb7ded2dfc68ef5cd1a4849364c199b85eb5040e7fca0bba35b12dec"

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
