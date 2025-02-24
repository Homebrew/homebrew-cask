cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "882d6cd01479843437c9770b0060def192f1714eee888f83260e88c4485f78fa",
         intel: "b8c6929597a2acbd4eae1d911f02ab403de08418e1f28256861aa828b0e7849b"

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
