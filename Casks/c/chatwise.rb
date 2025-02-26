cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.6"
  sha256 arm:   "a23bec7fa93de9990c1ec2dbc514865000e67b30eb7abd0fbed8039d0d22a246",
         intel: "c81d0e1350fa1b485787d61edb91e9cc131d849d0df15af7417cd7ee03230eb2"

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
