cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.15"
  sha256 arm:   "4d7780b745a3f6daadf1f65a76bc7f4f816c5d14f0b737d2364cd3531519965d",
         intel: "8014dc94ebb940a495c554c48b4192cf8564df08606b460b9dd08d72361aba7a"

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
