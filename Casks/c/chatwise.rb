cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.12"
  sha256 arm:   "3ce6a3bcbea467eb155a521e90e2a1215facb0658cd546b922eb9ca70aff00c3",
         intel: "9502b6ec3c0ba0fe6b43c01765e7bb4a0d1018b77432c5f2f586a6f0b72f021f"

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
