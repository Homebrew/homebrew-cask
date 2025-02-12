cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.67"
  sha256 arm:   "ae1fec5e15a1da13af17f3a78b6753400cb971f12fb7f12fc7ae3152859a08b9",
         intel: "13d9eeadc4d8cb4bf007408ec571081d1c7d7ddb3925c700a8a7fe1ec6e5e60e"

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
