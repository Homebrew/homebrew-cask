cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.5"
  sha256 arm:   "e151ab610468dc03ba63b36d4dc4df806cdac4af0e91cba31a43d5e63ade4602",
         intel: "3b043ca4d7bc8fcafb53a9e98161fdd796eaae832c57c9e6a91457f297cab116"

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
