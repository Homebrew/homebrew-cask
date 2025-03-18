cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "1ddd780ca62db959fd9d1ddd88b61cd728938046c6d281c94f158a4912676a8e",
         intel: "29da4401dc41a33469866cefddc0786dfb2135dbb193fa64107847c57b388e0c"

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
