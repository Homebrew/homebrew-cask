cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.0"
  sha256 arm:   "e39f496c8592a1c5cfad2891e26ca217a27e0cd08c568c04706da9ca7c2c84cf",
         intel: "5fa8a2be5050c609f22fb0477fb9d8860f2321941425c47e20cc3127834760e9"

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
