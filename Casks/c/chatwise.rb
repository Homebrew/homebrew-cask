cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.16"
  sha256 arm:   "cffdd26e627571d8e954980b4a90d3ffafed8b261b2193626f11ad8153f6bfdd",
         intel: "f1b4c0a96ed098b86b5242eb74113dc10c202f44f71bcc87c73f3681e14ede77"

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
