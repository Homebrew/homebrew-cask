cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.30"
  sha256 arm:   "d2b34eb943d83f849d5271601cc84262ac28d599695e3acc74110ef24194262e",
         intel: "71d7d89779726472b678f25b5caf44ebcf2faf1175be9dfe9f382bc2810cb59f"

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
