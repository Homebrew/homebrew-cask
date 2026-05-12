cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.5.0"
  sha256 arm:   "b23e9a8620d427a891ccd822accf5d3692adc565a7eaa06bee339c47bc2aca77",
         intel: "c2958d46814dbbd73dd75d5eacb7460ee90db41982c67d5b769a59fadaf1eec6"

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
  depends_on macos: :monterey

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
