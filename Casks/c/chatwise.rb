cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.51"
  sha256 arm:   "cb8d3ac37523a6b7a10377eca3953b2c45a597cfb730ea696b71b2d83f52b3b4",
         intel: "ac96351bf481e6b4a5671d5b7454b6143e60ca000c5af8d82f95bfaa612c1b5c"

  url "https://github.com/egoist/chatwise-releases/releases/download/v#{version}/ChatWise_#{version}_#{arch}_darwin.dmg",
      verified: "github.com/egoist/chatwise-releases/"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url "https://chatwise.app/api/trpc/getReleases"
    strategy :json do |json|
      json.dig("result", "data")&.map { |item| item["tag"]&.tr("v", "") }
    end
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
