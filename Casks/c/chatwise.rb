cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.32"
  sha256 arm:   "f5c0b2ea1f5cfe8072da770b37a9773617d4526ad6d625c34057b9f4c79b4782",
         intel: "0e89dfa3d234e87149be44b38c0ca356b1d6b773f11b37d2a603df8c165546b5"

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
