cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.91"
  sha256 arm:   "ca0b72101b3b212fb86f1a68da64d5e3ddae1bd4e1d7e0f91aa16e6f23bcd404",
         intel: "a3cd20ed0df8e8876861f1a1dc0529bf527bd640f8abaef8139769ca896c7e61"

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
