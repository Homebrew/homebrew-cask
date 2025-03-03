cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.13"
  sha256 arm:   "b998cbe0ea1299b5ecd3ef595d8199ec565b03674bda66816a344a336ee9aafc",
         intel: "5b79bc4bb7859f24df34ac9dd5fc32116ef7e4a586b971eaf311799db25fe202"

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
