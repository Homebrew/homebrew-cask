cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "bbfda1a23082e0d2df234f51bec4f91d8dc494e1f46f84c2fa836a2f63be1a1d",
         intel: "5457d898955bfaf35aa25282f7ebb47da68dc7d1058548373ff536a057151632"

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
