cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.8"
  sha256 arm:   "12ab83d8e46dda84f2bc3c67ffdb2d8cd59f9d2427b4820413342aad92974d02",
         intel: "8d47629603d3e0dbc3ade658cd57e5d8981eca50f8b3bbcc656ea24c37fae08b"

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
