cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.82"
  sha256 arm:   "ebc76a8408e0c969bdcf32e474cec6ec98c8904135f9562813f89ec29431347a",
         intel: "2e7a6a58c8a427f3ae19b2a242f149d0e7120fdb4756a7e552da7a536617a355"

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
