cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.78"
  sha256 arm:   "8939ac10844e2385a24c09481891d49c0dc63cc1ea031ed8bfa714476ae49229",
         intel: "67ab5e4325f26fe9a7afd214380891143bcd0916b79a02c65aba7f746a8912a9"

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
