cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.8"
  sha256 arm:   "479f32c5f2a987b64c6e23f259cba52fd96f1030a3cd65ce4bf63767d269f4b9",
         intel: "4001e283ae56355c45c20940a16e0078478ded5babbf46a8ab134c3531f13df1"

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
