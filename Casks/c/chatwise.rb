cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.18"
  sha256 arm:   "f5dd9710635a11b3fff0da79e01a8317444874332090a1a82140f3c8380c81b6",
         intel: "dfd4fdb4cbaa335ca8f3d98ae0b126cc7956188c112045f0be94331de9d8b20e"

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
