cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.61"
  sha256 arm:   "78a0117207277709e394c638ae35b64154e4e68d9356f67b7ba67228deeb69c9",
         intel: "b0ba3dfe203657fd7c0dbe8a8d20b56920cb50acb096e0277a4297e7d0439bd7"

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
