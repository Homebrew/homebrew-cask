cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.4"
  sha256 arm:   "5023f1dc53a1bfff788ba317aed2893b8208d5e9e419864f41674693672b2817",
         intel: "06baeebf20b330a4e1593e52114e2a4b357e8439f9ce8572d2d308bd67303972"

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
