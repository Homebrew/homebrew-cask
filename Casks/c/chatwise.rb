cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.52"
  sha256 arm:   "96d943645d1da04b4363fb1d6bc18295e0ac172d560a472c9718685c1a34d3c0",
         intel: "0122482a87d9c47bec8e03355d9e1bb1b27da825ca3b2689f00e0922a1f0028e"

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
