cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "b810f2934d39fdce7b7e7bbdc01c53e05d31036d6ae8f6403e5584f91105742d",
         intel: "96bdfed56be5ecb95ad82c2aace1248e1614c5f71305504803a9783b6a1f55c9"

  url "https://github.com/egoist/chatwise-releases/releases/download/v#{version}/ChatWise_#{version}_#{arch}.dmg",
      verified: "github.com/egoist/chatwise-releases/"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
