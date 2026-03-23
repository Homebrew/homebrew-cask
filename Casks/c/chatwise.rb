cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.28"
  sha256 arm:   "9b0d0f122ff6549d497ca1e05ed5e41aeec44f240be26addf5c4da2c517129ad",
         intel: "0581c3135deb8e8a4afbe5382159702b69787f8aebe6d782e9f46f6a16c23f6d"

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
