cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.80"
  sha256 arm:   "df51aa89923ce21bfe76eecdb25595dec4945c26ae8cd6626e9ad048e43412c1",
         intel: "04df203e8e7ea7b19979bbec0d6ba333165bc67ffc26fb888b699c9f7d4966c2"

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
