cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.18"
  sha256 arm:   "b8abec465e2a13057cfa8c8bc1b1d10a8c55a101995b7f3c1226f5d17c34e6cc",
         intel: "ffbd51224a824dfba632ae51fd61c0135226c4cf98d26bf1d34d2079f5ad8e89"

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
