cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.44"
  sha256 arm:   "2189f4c690e2d3af53ff80a0dc3ec61946080789bc51c1166c86ef178df5e8c7",
         intel: "507dfda6463145bff8d60305b48dd0a10e289774242a915ce8ab742d81a313d7"

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
