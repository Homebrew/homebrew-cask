cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.65"
  sha256 arm:   "17074c7ebe88cd7aff9ac97fd3443ce7d5571f3d8c5626beb951da80f9086b08",
         intel: "e96734db9bd1cee783efb0436191af9f2f6b59dfe5206e09166f2e0d480fcee8"

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
