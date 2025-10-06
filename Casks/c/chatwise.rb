cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.31"
  sha256 arm:   "684155652c98d8103bac2c714a35bce38249863be07f88b1b66f6eb736bebfbd",
         intel: "cbe242a07e1655870e6e8b2c7d61a6794c8a37557a56947178c83650a9222771"

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
