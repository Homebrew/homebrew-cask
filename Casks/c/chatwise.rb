cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.30"
  sha256 arm:   "63a6e101c29221d56049d5fab85ca12987939a608abc389692c299f4f8bb5721",
         intel: "76a0d24feaeab4e7da9e80186c6b479af3d7aa03c48e200acebec092165b9146"

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
