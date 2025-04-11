cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.31"
  sha256 arm:   "bf51f25d8bdcb55cd6596bcf6c3c586683f1ad045b8aa47401ae431ced3a04f4",
         intel: "1e5d65606d7d8fd7f1389c8a6b4c5478e2ad17f692dec9728d9d26a16c180eab"

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
