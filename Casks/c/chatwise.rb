cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "06062e6a02314d120e8b4dd84aca94ceeaa460f947f0c617226d730442562e90",
         intel: "63c25a3ff4d65e73e54d66590d6a5c65fc695f8806495c46994daafbdb8511ef"

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
