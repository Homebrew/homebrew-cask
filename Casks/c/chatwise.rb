cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.15"
  sha256 arm:   "3044ed3a6c68603bbad58a66b94820277b7c4b9fe9e69d236087fc1981ad696f",
         intel: "7cd40481e80aba1080044b82162135a35c55aad89ee903266f056446fa32c5f7"

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
