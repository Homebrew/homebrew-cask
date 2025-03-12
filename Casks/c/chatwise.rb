cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.29"
  sha256 arm:   "f46f08edf8a39f10e5e6ef326eef1b18bba2f6d0da86768d94df61b8c952fa89",
         intel: "ca58326cf8a3a848a537583506a328bccd08450455c9473aa6d70b84d3acf086"

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
