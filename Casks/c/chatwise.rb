cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "df3571bd270d95afa21ae26e6da7ad7476257bfb9e230574f55b7c3dd929ea66",
         intel: "82ae154573a84d77c872730890f5e54fd46bcd1b311266f6464cb94f5c71c5fe"

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
