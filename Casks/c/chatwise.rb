cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.22"
  sha256 arm:   "b581ce963b3835c7b207daef392467c7f828f601b6f5963a28fe4000ba12e502",
         intel: "8eb07fba763cb0434fec02098029dca7352afc0cb162f95ccaefecb7da3620d1"

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
