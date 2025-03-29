cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.17"
  sha256 arm:   "800ed79d2e68ef30d2876255a418785c56eb718a86b60db69dd4023f21c4449d",
         intel: "0db1d403a129d3cf3e33ee8df745dffe47ff44ded22e956d0296c569294020c1"

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
