cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.75"
  sha256 arm:   "c2fa7da940b907f7ba8f3130e0c45cbdb3cf2388e73888d29e8f20934d259e64",
         intel: "07b8bed08f1ecbd0bf2172c49e5c9e3bf5956d708d8c6c084a34c3da9d42edda"

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
