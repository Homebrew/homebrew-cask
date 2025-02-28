cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.10"
  sha256 arm:   "f0f8e88331f6b618b32052392121d36ca8fa149023de07d461397677f286d45b",
         intel: "b62a63a8bdc838599381395c2e5a1391f616ebe3737edfe7607c38596c045be2"

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
