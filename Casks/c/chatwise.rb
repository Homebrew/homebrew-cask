cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.56"
  sha256 arm:   "f33ebb6294b5e319c0123624f010d80b548b3607b80f3d9de5e9d0a9621e8e4e",
         intel: "c7b2293ab9ed932d673134745b8763c1f4bf45ce793bfd5bb20ad91e0e4711c1"

  url "https://github.com/egoist/chatwise-releases/releases/download/v#{version}/ChatWise_#{version}_#{arch}.dmg",
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
