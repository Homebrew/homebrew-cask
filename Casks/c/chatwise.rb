cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.89"
  sha256 arm:   "f7d5effbf99da7f244d30182a72d0d795faaeef52aa2aa57331d4865d8d6a20c",
         intel: "de938da6f139ede34b66d56b8b036e634c28138c3292f96cfa6c5ab4b7647b77"

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
