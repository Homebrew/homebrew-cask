cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.16"
  sha256 arm:   "27eed8e43fd3ed2eba345e4beb1af5d0764359019750860a845c72601d4ff27c",
         intel: "21d5ba8e0114fc11d89aaddd25661031998410dfcc4a8000ba2938dfac3f48a0"

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
