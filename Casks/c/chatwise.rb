cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.27"
  sha256 arm:   "b8052b20624ec8b9329f97e3a2fd272ab1e188c644af2f1a14108a873255764a",
         intel: "e7d6360b95a37e1298a6480c9879d823442659de62361b64f676e24fe3edd918"

  url "https://releases.chatwise.app/#{version}/ChatWise-#{version}-#{arch}.dmg"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url "https://releases.chatwise.app/releases"
    strategy :json do |json|
      json.map { |v| v["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
