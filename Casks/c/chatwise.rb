cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.63"
  sha256 arm:   "7cc4fbe61e378f8e35e23dd5a2b5ef351a6c24f2672e2ff3058a87b0eb829fed",
         intel: "725c8a050a15e7310a62da5d17a5f909e239e47d5cbb2d41ec571fddbd9e3af3"

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
