cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.74"
  sha256 arm:   "fff15581c9926f99b88a558140248f705b745ee23ea6734f23c302ea4ecd7523",
         intel: "f79c804e28c6449dabb3968226c8f51b37f882da036c71af42c9f8c9c1617ad3"

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
