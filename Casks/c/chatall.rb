cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.60"
  sha256 arm:   "c8a1ffc4f57c923643103537bad7e645b6960f2bdfce7066cca186c05f2253a1",
         intel: "3572429fc7c58be71ce3d53f871b2762762f633817044b2a28607837500214ad"

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
