cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.20"
  sha256 arm:   "fa3b7f8849b01a75d4e32a499ddc1f84d06e338e2fc4c3c84f4bf0b9afb2ef69",
         intel: "ec82f0f696ba24275d4c568019302d62991d97998233c15153bd94b00eebcd52"

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
