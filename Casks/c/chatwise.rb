cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.34"
  sha256 arm:   "c5f19de6b7ee8a7ce338fefbd870b43a82e8a8a41db96aee576bc9c51ca07cf7",
         intel: "e48f3da7ff69ef2f271cecc9779016a131df6cad51bd45314ecdd7a5fa829cf7"

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
