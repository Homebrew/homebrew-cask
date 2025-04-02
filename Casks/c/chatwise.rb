cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.21"
  sha256 arm:   "69681d1cbbb062490846d8b37f4d83d53a3948d804a5afe68936866f60ea4aa9",
         intel: "7643ac2c7fb2ddee9a39823e1368cc2c222f96a8769fb2e568969570b3716d4e"

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
