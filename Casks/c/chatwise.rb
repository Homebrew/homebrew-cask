cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.68"
  sha256 arm:   "4fd7f2de2b5034026e53d80755446f8a5b35fbe0817b533280982fa2004d524d",
         intel: "da514c90465cee118b969db38e08dab4e3ca11a0f0f04012e702d724aff68c72"

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
