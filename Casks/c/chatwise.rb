cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.54"
  sha256 arm:   "c999af942677fe3c30e7bab2ee8d139589318210cd32a52a7cc81543e809a7fe",
         intel: "bf236eb8215efa91d064b4944b58dde3b23fb54f504026942d399268e555ae52"

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
