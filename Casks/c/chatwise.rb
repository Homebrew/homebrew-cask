cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.9"
  sha256 arm:   "cc0f6b744668df96dc0820a4c8538dbd8e2785f5c1e722bd1748dbfd411b8d8d",
         intel: "3eb33864ff2ba5b4bf93a2096ca6fe8c4c837bf4c4ab2df61d3598eb24fd12f1"

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
