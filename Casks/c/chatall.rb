cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.63.97"
  sha256 arm:   "e4b254174d9a9264262016830cdc586b7dc4c4daf204cb8608776d47b4093d49",
         intel: "130f14bb21ebd4fffa73c07b701bec9bd0b501ed18dc4babb3e047565b8a7cb1"

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
